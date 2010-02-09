/**
 * @file raw.c
 *
 * @brief Implementes raw socket function
 *
 * @date 04.02.2010
 * @author Anton Bondarev
 */

#include <net/protocol.h>
#include <net/inet_common.h>
#include <net/socket.h>
#include <net/sock.h>
#include <net/icmp.h>
#include <net/udp.h>
#include <net/net.h>
#include <net/in.h>

static int raw_init(struct sock *sk) {
	return 0;
}

static void raw_close(struct sock *sk, long timeout) {
	//TODO: release socket
}

static int raw_rcv_skb(struct sock * sk, sk_buff_t * skb) {
	//TODO: sock_queue_rcv_skb
        return NET_RX_SUCCESS;
}

static void raw_v4_hash(struct sock *sk) {
}

static void raw_v4_unhash(struct sock *sk) {
}

static int raw_sendmsg(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
                       size_t len) {
        //TODO:
	return 0;
}

static int raw_recvmsg(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
                       size_t len, int noblock, int flags, int *addr_len) {
	//TODO: skb_recv_datagram
	return 0;
}

static int raw_bind(struct sock *sk, struct sockaddr *uaddr, int addr_len) {
	struct inet_sock *inet = inet_sk(sk);
        struct sockaddr_in *addr = (struct sockaddr_in *) uaddr;

	inet->rcv_saddr = inet->saddr = addr->sin_addr.s_addr;

	return 0;
}

static int raw_setsockopt(struct sock *sk, int level, int optname,
                          char *optval, int optlen) {
	return 0;
}

static int raw_getsockopt(struct sock *sk, int level, int optname,
                          char *optval, int *optlen) {
	return 0;
}

static int raw_ioctl(struct sock *sk, int cmd, unsigned long arg) {
	return 0;
}

int ip4_datagram_connect(struct sock *sk, struct sockaddr *uaddr, int addr_len) {
	return 0;
}

static const struct proto raw_prot = {
		.name = "RAW",
#if 0
		.owner = THIS_MODULE,
#endif
		.close = raw_close,
		.connect = ip4_datagram_connect,
		.disconnect = udp_disconnect,
		.ioctl = raw_ioctl,
		.init = raw_init,
		.setsockopt = raw_setsockopt,
		.getsockopt = raw_getsockopt,
		.sendmsg = raw_sendmsg,
		.recvmsg = raw_recvmsg,
		.bind = raw_bind,
		.backlog_rcv = raw_rcv_skb,
		.hash = raw_v4_hash,
		.unhash = raw_v4_unhash,
		.obj_size = sizeof(struct raw_sock),
};

/*
 * For SOCK_RAW sockets; should be the same as inet_dgram_ops but without
 * udp_poll
 */
static const struct proto_ops inet_sockraw_ops = {
		.family = PF_INET,
#if 0
		.owner = THIS_MODULE,
#endif
		.release = inet_release,
		.bind = inet_bind,
		.connect = inet_dgram_connect,
#if 0
		.socketpair = sock_no_socketpair,
		.accept = sock_no_accept,
		.getname = inet_getname,
		.poll = datagram_poll,
		.ioctl = inet_ioctl,
		.listen = sock_no_listen,
		.shutdown = inet_shutdown,
		.setsockopt = sock_common_setsockopt,
		.getsockopt = sock_common_getsockopt,
		.sendmsg = inet_sendmsg,
		.recvmsg = sock_common_recvmsg,
		.mmap = sock_no_mmap,
		.sendpage = inet_sendpage,
#endif
		};

static struct inet_protosw raw_socket = {
		.type = SOCK_RAW,
		.protocol = IPPROTO_IP, /* wild card */
		.prot = &raw_prot,
		.ops = &inet_sockraw_ops,
		.no_check = 0 /*UDP_CSUM_DEFAULT*/
};

DECLARE_INET_SOCK(raw_socket);
