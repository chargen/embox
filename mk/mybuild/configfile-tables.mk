# Generated by GOLD Parser Builder using Mybuild program template. Do not edit!

# Grammar info:
#   Name            : ConfigFile
#   Version         : 0.3
#   Author          : Eldar Abusalimov, Anton Kozlov
#   About           : Mybuild configuration file
#   Case Sensitive  : True
#   Start Symbol    : 25

ifndef gold_grammar
$(error 'gold_grammar' is not defined. \
	Do not include $(notdir $(lastword $(MAKEFILE_LIST))) directly!)
endif # gold_grammar

# Contains all necessary tables.
define __gold_$(gold_grammar)_parser
	$(gold-parser \
		# Symbols.
		# 	$(gold-symbol <ID>,
		# 		<Type>,
		# 		<Function name>
		# 	),
		$(gold-symbol-table \
			$(gold-symbol 0,3,EOF),
			$(gold-symbol 1,7,Error),
			$(gold-symbol 2,2,Whitespace),
			$(gold-symbol 3,1,LParan),
			$(gold-symbol 4,1,RParan),
			$(gold-symbol 5,1,Comma),
			$(gold-symbol 6,1,Dot),
			$(gold-symbol 7,1,DotTimes),
			$(gold-symbol 8,1,At),
			$(gold-symbol 9,1,LBrace),
			$(gold-symbol 10,1,RBrace),
			$(gold-symbol 11,1,Eq),
			$(gold-symbol 12,1,BooleanLiteral),
			$(gold-symbol 13,1,configuration),
			$(gold-symbol 14,1,Identifier),
			$(gold-symbol 15,1,import),
			$(gold-symbol 16,1,include),
			$(gold-symbol 17,1,NumberLiteral),
			$(gold-symbol 18,1,package),
			$(gold-symbol 19,1,StringLiteral),
			$(gold-symbol 20,0,AnnotatedConfiguration),
			$(gold-symbol 21,0,AnnotatedConfigurationMember),
			$(gold-symbol 22,0,Annotation),
			$(gold-symbol 23,0,AnnotationInitializer),
			$(gold-symbol 24,0,Annotations),
			$(gold-symbol 25,0,ConfigFile),
			$(gold-symbol 26,0,Configuration2),
			$(gold-symbol 27,0,ConfigurationMembers),
			$(gold-symbol 28,0,Import2),
			$(gold-symbol 29,0,Imports),
			$(gold-symbol 30,0,IncludeMember),
			$(gold-symbol 31,0,Initializer),
			$(gold-symbol 32,0,Package2),
			$(gold-symbol 33,0,Parameter),
			$(gold-symbol 34,0,ParametersList),
			$(gold-symbol 35,0,QualifiedName),
			$(gold-symbol 36,0,QualifiedNameWithWildcard),
			$(gold-symbol 37,0,Reference),
			$(gold-symbol 38,0,ReferenceWithInitializer),
			$(gold-symbol 39,0,ReferenceWithInitializerList),
			$(gold-symbol 40,0,SimpleReference),
			$(gold-symbol 41,0,Type),
			$(gold-symbol 42,0,Value),
		),# Total 43 symbol(s).

		# Rules.
		# 	$(gold-rule <ID>,
		# 		<LHS nonterminal ID>,
		# 		<RHS total symbols>,
		# 		<Function name>
		# 	),
		$(gold-rule-table \
			$(gold-rule 0,25,3,ConfigFile),
			$(gold-rule 1,32,2,Package_package),
			$(gold-rule 2,32,0,Package),
			$(gold-rule 3,29,2,Imports),
			$(gold-rule 4,29,0,Imports2),
			$(gold-rule 5,28,2,Import_import),
			$(gold-rule 6,41,1,Type),
			$(gold-rule 7,41,0,Type2),
			$(gold-rule 8,20,2,AnnotatedConfiguration),
			$(gold-rule 9,26,5,Configuration_configuration_Identifier_LBrace_RBrace),
			$(gold-rule 10,27,2,ConfigurationMembers),
			$(gold-rule 11,27,0,ConfigurationMembers2),
			$(gold-rule 12,21,2,AnnotatedConfigurationMember),
			$(gold-rule 13,30,2,IncludeMember_include),
			$(gold-rule 14,39,3,ReferenceWithInitializerList_Comma),
			$(gold-rule 15,39,1,ReferenceWithInitializerList),
			$(gold-rule 16,38,2,ReferenceWithInitializer),
			$(gold-rule 17,31,3,Initializer_LParan_RParan),
			$(gold-rule 18,31,0,Initializer),
			$(gold-rule 19,24,2,Annotations),
			$(gold-rule 20,24,0,Annotations2),
			$(gold-rule 21,22,3,Annotation_At),
			$(gold-rule 22,23,3,AnnotationInitializer_LParan_RParan),
			$(gold-rule 23,23,3,AnnotationInitializer_LParan_RParan2),
			$(gold-rule 24,23,0,AnnotationInitializer),
			$(gold-rule 25,34,3,ParametersList_Comma),
			$(gold-rule 26,34,1,ParametersList),
			$(gold-rule 27,33,3,Parameter_Eq),
			$(gold-rule 28,42,1,Value_StringLiteral),
			$(gold-rule 29,42,1,Value_NumberLiteral),
			$(gold-rule 30,42,1,Value_BooleanLiteral),
			$(gold-rule 31,42,1,Value),
			$(gold-rule 32,37,1,Reference),
			$(gold-rule 33,40,1,SimpleReference_Identifier),
			$(gold-rule 34,35,3,QualifiedName_Identifier_Dot),
			$(gold-rule 35,35,1,QualifiedName_Identifier),
			$(gold-rule 36,36,2,QualifiedNameWithWildcard_DotTimes),
			$(gold-rule 37,36,1,QualifiedNameWithWildcard),
		),# Total 38 rule(s).

		# Charsets.
		# 	$(gold-charset <ID>,
		# 		<List of chars>
		# 	),
		$(gold-charset-table \
			$(gold-charset 0,9.13;32;160),
			$(gold-charset 1,40),
			$(gold-charset 2,41),
			$(gold-charset 3,44),
			$(gold-charset 4,64),
			$(gold-charset 5,123),
			$(gold-charset 6,125),
			$(gold-charset 7,61),
			$(gold-charset 8,94),
			$(gold-charset 9,65.90;95;97.98;100.101;103.104;106.111;113.115;117.122),
			$(gold-charset 10,49.57),
			$(gold-charset 11,34),
			$(gold-charset 12,39),
			$(gold-charset 13,46),
			$(gold-charset 14,47),
			$(gold-charset 15,48),
			$(gold-charset 16,99),
			$(gold-charset 17,102),
			$(gold-charset 18,105),
			$(gold-charset 19,112),
			$(gold-charset 20,116),
			$(gold-charset 21,65.90;95;97.122),
			$(gold-charset 22,48.57;65.90;95;97.122),
			$(gold-charset 23,48.57),
			$(gold-charset 24,9;32.33;35.91;93.126;160),
			$(gold-charset 25,92),
			$(gold-charset 26,34;39;92;110;114;116),
			$(gold-charset 27,9.13;32.38;40.91;93.126;160),
			$(gold-charset 28,39;92),
			$(gold-charset 29,42),
			$(gold-charset 30,9.13;32.41;43.126;160),
			$(gold-charset 31,9.13;32.46;48.126;160),
			$(gold-charset 32,9;11.12;32.126;160),
			$(gold-charset 33,13),
			$(gold-charset 34,10),
			$(gold-charset 35,120),
			$(gold-charset 36,48.57;65.70;97.102),
			$(gold-charset 37,48.57;65.90;95;97.110;112.122),
			$(gold-charset 38,111),
			$(gold-charset 39,48.57;65.90;95;97.109;111.122),
			$(gold-charset 40,110),
			$(gold-charset 41,48.57;65.90;95;97.101;103.122),
			$(gold-charset 42,48.57;65.90;95;97.104;106.122),
			$(gold-charset 43,48.57;65.90;95;97.102;104.122),
			$(gold-charset 44,103),
			$(gold-charset 45,48.57;65.90;95;97.116;118.122),
			$(gold-charset 46,117),
			$(gold-charset 47,48.57;65.90;95;97.113;115.122),
			$(gold-charset 48,114),
			$(gold-charset 49,48.57;65.90;95;98.122),
			$(gold-charset 50,97),
			$(gold-charset 51,48.57;65.90;95;97.115;117.122),
			$(gold-charset 52,48.57;65.90;95;97.107;109.122),
			$(gold-charset 53,108),
			$(gold-charset 54,48.57;65.90;95;97.114;116.122),
			$(gold-charset 55,115),
			$(gold-charset 56,48.57;65.90;95;97.100;102.122),
			$(gold-charset 57,101),
			$(gold-charset 58,48.57;65.90;95;97.108;111.122),
			$(gold-charset 59,109),
			$(gold-charset 60,48.57;65.90;95;97.111;113.122),
			$(gold-charset 61,48.57;65.90;95;97.98;100.122),
			$(gold-charset 62,48.57;65.90;95;97.99;101.122),
			$(gold-charset 63,100),
			$(gold-charset 64,48.57;65.90;95;97.106;108.122),
			$(gold-charset 65,107),
		),# Total 66 charset(s).

		# DFA states.
		# 	$(gold-dfa-state <ID>,
		# 		<Accept symbol ID or -1>,
		# 		$(gold-dfa-edge <Charset ID>,
		# 			<Target state ID>
		# 		),
		# 		...
		# 	),
		$(gold-dfa-table $(def-id \
				0# Initial state ID.
			),$(gold-dfa-state 0,-1,
				$(gold-dfa-edge 0,1),
				$(gold-dfa-edge 1,2),
				$(gold-dfa-edge 2,3),
				$(gold-dfa-edge 3,4),
				$(gold-dfa-edge 4,5),
				$(gold-dfa-edge 5,6),
				$(gold-dfa-edge 6,7),
				$(gold-dfa-edge 7,8),
				$(gold-dfa-edge 8,9),
				$(gold-dfa-edge 9,10),
				$(gold-dfa-edge 10,12),
				$(gold-dfa-edge 11,15),
				$(gold-dfa-edge 12,20),
				$(gold-dfa-edge 13,29),
				$(gold-dfa-edge 14,31),
				$(gold-dfa-edge 15,41),
				$(gold-dfa-edge 16,46),
				$(gold-dfa-edge 17,59),
				$(gold-dfa-edge 18,64),
				$(gold-dfa-edge 19,76),
				$(gold-dfa-edge 20,83),
			),$(gold-dfa-state 1,2,
				$(gold-dfa-edge 0,1),
			),$(gold-dfa-state 2,3,
			),$(gold-dfa-state 3,4,
			),$(gold-dfa-state 4,5,
			),$(gold-dfa-state 5,8,
			),$(gold-dfa-state 6,9,
			),$(gold-dfa-state 7,10,
			),$(gold-dfa-state 8,11,
			),$(gold-dfa-state 9,-1,
				$(gold-dfa-edge 21,10),
			),$(gold-dfa-state 10,14,
				$(gold-dfa-edge 22,11),
			),$(gold-dfa-state 11,14,
				$(gold-dfa-edge 22,11),
			),$(gold-dfa-state 12,17,
				$(gold-dfa-edge 23,12),
				$(gold-dfa-edge 13,13),
			),$(gold-dfa-state 13,-1,
				$(gold-dfa-edge 23,14),
			),$(gold-dfa-state 14,17,
				$(gold-dfa-edge 23,14),
			),$(gold-dfa-state 15,-1,
				$(gold-dfa-edge 24,16),
				$(gold-dfa-edge 25,17),
				$(gold-dfa-edge 11,19),
			),$(gold-dfa-state 16,-1,
				$(gold-dfa-edge 24,16),
				$(gold-dfa-edge 25,17),
				$(gold-dfa-edge 11,19),
			),$(gold-dfa-state 17,-1,
				$(gold-dfa-edge 26,18),
			),$(gold-dfa-state 18,-1,
				$(gold-dfa-edge 24,16),
				$(gold-dfa-edge 25,17),
				$(gold-dfa-edge 11,19),
			),$(gold-dfa-state 19,19,
			),$(gold-dfa-state 20,-1,
				$(gold-dfa-edge 12,21),
			),$(gold-dfa-state 21,-1,
				$(gold-dfa-edge 12,22),
			),$(gold-dfa-state 22,-1,
				$(gold-dfa-edge 27,23),
				$(gold-dfa-edge 25,24),
				$(gold-dfa-edge 12,26),
			),$(gold-dfa-state 23,-1,
				$(gold-dfa-edge 27,23),
				$(gold-dfa-edge 25,24),
				$(gold-dfa-edge 12,26),
			),$(gold-dfa-state 24,-1,
				$(gold-dfa-edge 28,25),
			),$(gold-dfa-state 25,-1,
				$(gold-dfa-edge 27,23),
				$(gold-dfa-edge 25,24),
				$(gold-dfa-edge 12,26),
			),$(gold-dfa-state 26,-1,
				$(gold-dfa-edge 27,23),
				$(gold-dfa-edge 25,24),
				$(gold-dfa-edge 12,27),
			),$(gold-dfa-state 27,-1,
				$(gold-dfa-edge 27,23),
				$(gold-dfa-edge 25,24),
				$(gold-dfa-edge 12,28),
			),$(gold-dfa-state 28,19,
			),$(gold-dfa-state 29,6,
				$(gold-dfa-edge 29,30),
			),$(gold-dfa-state 30,7,
			),$(gold-dfa-state 31,-1,
				$(gold-dfa-edge 29,32),
				$(gold-dfa-edge 14,37),
			),$(gold-dfa-state 32,-1,
				$(gold-dfa-edge 30,33),
				$(gold-dfa-edge 29,34),
			),$(gold-dfa-state 33,-1,
				$(gold-dfa-edge 30,33),
				$(gold-dfa-edge 29,34),
			),$(gold-dfa-state 34,-1,
				$(gold-dfa-edge 31,35),
				$(gold-dfa-edge 14,36),
			),$(gold-dfa-state 35,-1,
				$(gold-dfa-edge 30,33),
				$(gold-dfa-edge 29,34),
			),$(gold-dfa-state 36,2,
			),$(gold-dfa-state 37,2,
				$(gold-dfa-edge 32,38),
				$(gold-dfa-edge 33,39),
				$(gold-dfa-edge 34,40),
			),$(gold-dfa-state 38,2,
				$(gold-dfa-edge 32,38),
				$(gold-dfa-edge 33,39),
				$(gold-dfa-edge 34,40),
			),$(gold-dfa-state 39,-1,
				$(gold-dfa-edge 34,40),
			),$(gold-dfa-state 40,2,
			),$(gold-dfa-state 41,17,
				$(gold-dfa-edge 23,12),
				$(gold-dfa-edge 13,13),
				$(gold-dfa-edge 35,42),
			),$(gold-dfa-state 42,-1,
				$(gold-dfa-edge 36,43),
			),$(gold-dfa-state 43,17,
				$(gold-dfa-edge 36,43),
				$(gold-dfa-edge 13,44),
			),$(gold-dfa-state 44,-1,
				$(gold-dfa-edge 36,45),
			),$(gold-dfa-state 45,17,
				$(gold-dfa-edge 36,45),
			),$(gold-dfa-state 46,14,
				$(gold-dfa-edge 37,11),
				$(gold-dfa-edge 38,47),
			),$(gold-dfa-state 47,14,
				$(gold-dfa-edge 39,11),
				$(gold-dfa-edge 40,48),
			),$(gold-dfa-state 48,14,
				$(gold-dfa-edge 41,11),
				$(gold-dfa-edge 17,49),
			),$(gold-dfa-state 49,14,
				$(gold-dfa-edge 42,11),
				$(gold-dfa-edge 18,50),
			),$(gold-dfa-state 50,14,
				$(gold-dfa-edge 43,11),
				$(gold-dfa-edge 44,51),
			),$(gold-dfa-state 51,14,
				$(gold-dfa-edge 45,11),
				$(gold-dfa-edge 46,52),
			),$(gold-dfa-state 52,14,
				$(gold-dfa-edge 47,11),
				$(gold-dfa-edge 48,53),
			),$(gold-dfa-state 53,14,
				$(gold-dfa-edge 49,11),
				$(gold-dfa-edge 50,54),
			),$(gold-dfa-state 54,14,
				$(gold-dfa-edge 51,11),
				$(gold-dfa-edge 20,55),
			),$(gold-dfa-state 55,14,
				$(gold-dfa-edge 42,11),
				$(gold-dfa-edge 18,56),
			),$(gold-dfa-state 56,14,
				$(gold-dfa-edge 37,11),
				$(gold-dfa-edge 38,57),
			),$(gold-dfa-state 57,14,
				$(gold-dfa-edge 39,11),
				$(gold-dfa-edge 40,58),
			),$(gold-dfa-state 58,13,
				$(gold-dfa-edge 22,11),
			),$(gold-dfa-state 59,14,
				$(gold-dfa-edge 49,11),
				$(gold-dfa-edge 50,60),
			),$(gold-dfa-state 60,14,
				$(gold-dfa-edge 52,11),
				$(gold-dfa-edge 53,61),
			),$(gold-dfa-state 61,14,
				$(gold-dfa-edge 54,11),
				$(gold-dfa-edge 55,62),
			),$(gold-dfa-state 62,14,
				$(gold-dfa-edge 56,11),
				$(gold-dfa-edge 57,63),
			),$(gold-dfa-state 63,12,
				$(gold-dfa-edge 22,11),
			),$(gold-dfa-state 64,14,
				$(gold-dfa-edge 58,11),
				$(gold-dfa-edge 59,65),
				$(gold-dfa-edge 40,70),
			),$(gold-dfa-state 65,14,
				$(gold-dfa-edge 60,11),
				$(gold-dfa-edge 19,66),
			),$(gold-dfa-state 66,14,
				$(gold-dfa-edge 37,11),
				$(gold-dfa-edge 38,67),
			),$(gold-dfa-state 67,14,
				$(gold-dfa-edge 47,11),
				$(gold-dfa-edge 48,68),
			),$(gold-dfa-state 68,14,
				$(gold-dfa-edge 51,11),
				$(gold-dfa-edge 20,69),
			),$(gold-dfa-state 69,15,
				$(gold-dfa-edge 22,11),
			),$(gold-dfa-state 70,14,
				$(gold-dfa-edge 61,11),
				$(gold-dfa-edge 16,71),
			),$(gold-dfa-state 71,14,
				$(gold-dfa-edge 52,11),
				$(gold-dfa-edge 53,72),
			),$(gold-dfa-state 72,14,
				$(gold-dfa-edge 45,11),
				$(gold-dfa-edge 46,73),
			),$(gold-dfa-state 73,14,
				$(gold-dfa-edge 62,11),
				$(gold-dfa-edge 63,74),
			),$(gold-dfa-state 74,14,
				$(gold-dfa-edge 56,11),
				$(gold-dfa-edge 57,75),
			),$(gold-dfa-state 75,16,
				$(gold-dfa-edge 22,11),
			),$(gold-dfa-state 76,14,
				$(gold-dfa-edge 49,11),
				$(gold-dfa-edge 50,77),
			),$(gold-dfa-state 77,14,
				$(gold-dfa-edge 61,11),
				$(gold-dfa-edge 16,78),
			),$(gold-dfa-state 78,14,
				$(gold-dfa-edge 64,11),
				$(gold-dfa-edge 65,79),
			),$(gold-dfa-state 79,14,
				$(gold-dfa-edge 49,11),
				$(gold-dfa-edge 50,80),
			),$(gold-dfa-state 80,14,
				$(gold-dfa-edge 43,11),
				$(gold-dfa-edge 44,81),
			),$(gold-dfa-state 81,14,
				$(gold-dfa-edge 56,11),
				$(gold-dfa-edge 57,82),
			),$(gold-dfa-state 82,18,
				$(gold-dfa-edge 22,11),
			),$(gold-dfa-state 83,14,
				$(gold-dfa-edge 47,11),
				$(gold-dfa-edge 48,84),
			),$(gold-dfa-state 84,14,
				$(gold-dfa-edge 45,11),
				$(gold-dfa-edge 46,85),
			),$(gold-dfa-state 85,14,
				$(gold-dfa-edge 56,11),
				$(gold-dfa-edge 57,86),
			),$(gold-dfa-state 86,12,
				$(gold-dfa-edge 22,11),
			)
		),# Total 87 DFA state(s).

		# LALR states.
		# 	$(gold-lalr-state <ID>,
		# 		$(gold-lalr-action <Symbol ID>,
		# 			<Action>,
		# 			<Value>
		# 		),
		# 		...
		# 	),
		$(gold-lalr-table $(def-id \
				0# Initial state ID.
			),$(gold-lalr-state 0,
				$(gold-lalr-action 18,1,1),
				$(gold-lalr-action 25,3,2),
				$(gold-lalr-action 32,3,3),
				$(gold-lalr-action 0,2,2),
				$(gold-lalr-action 8,2,2),
				$(gold-lalr-action 13,2,2),
				$(gold-lalr-action 15,2,2),
			),$(gold-lalr-state 1,
				$(gold-lalr-action 14,1,4),
				$(gold-lalr-action 35,3,5),
			),$(gold-lalr-state 2,
				$(gold-lalr-action 0,4,0),
			),$(gold-lalr-state 3,
				$(gold-lalr-action 15,1,6),
				$(gold-lalr-action 28,3,7),
				$(gold-lalr-action 29,3,8),
				$(gold-lalr-action 0,2,4),
				$(gold-lalr-action 8,2,4),
				$(gold-lalr-action 13,2,4),
			),$(gold-lalr-state 4,
				$(gold-lalr-action 6,1,9),
				$(gold-lalr-action 0,2,35),
				$(gold-lalr-action 3,2,35),
				$(gold-lalr-action 4,2,35),
				$(gold-lalr-action 5,2,35),
				$(gold-lalr-action 7,2,35),
				$(gold-lalr-action 8,2,35),
				$(gold-lalr-action 10,2,35),
				$(gold-lalr-action 13,2,35),
				$(gold-lalr-action 15,2,35),
				$(gold-lalr-action 16,2,35),
			),$(gold-lalr-state 5,
				$(gold-lalr-action 0,2,1),
				$(gold-lalr-action 8,2,1),
				$(gold-lalr-action 13,2,1),
				$(gold-lalr-action 15,2,1),
			),$(gold-lalr-state 6,
				$(gold-lalr-action 14,1,4),
				$(gold-lalr-action 35,3,10),
				$(gold-lalr-action 36,3,11),
			),$(gold-lalr-state 7,
				$(gold-lalr-action 15,1,6),
				$(gold-lalr-action 28,3,7),
				$(gold-lalr-action 29,3,12),
				$(gold-lalr-action 0,2,4),
				$(gold-lalr-action 8,2,4),
				$(gold-lalr-action 13,2,4),
			),$(gold-lalr-state 8,
				$(gold-lalr-action 8,1,13),
				$(gold-lalr-action 20,3,14),
				$(gold-lalr-action 22,3,15),
				$(gold-lalr-action 24,3,16),
				$(gold-lalr-action 41,3,17),
				$(gold-lalr-action 0,2,7),
				$(gold-lalr-action 13,2,20),
			),$(gold-lalr-state 9,
				$(gold-lalr-action 14,1,4),
				$(gold-lalr-action 35,3,18),
			),$(gold-lalr-state 10,
				$(gold-lalr-action 7,1,19),
				$(gold-lalr-action 0,2,37),
				$(gold-lalr-action 8,2,37),
				$(gold-lalr-action 13,2,37),
				$(gold-lalr-action 15,2,37),
			),$(gold-lalr-state 11,
				$(gold-lalr-action 0,2,5),
				$(gold-lalr-action 8,2,5),
				$(gold-lalr-action 13,2,5),
				$(gold-lalr-action 15,2,5),
			),$(gold-lalr-state 12,
				$(gold-lalr-action 0,2,3),
				$(gold-lalr-action 8,2,3),
				$(gold-lalr-action 13,2,3),
			),$(gold-lalr-state 13,
				$(gold-lalr-action 14,1,4),
				$(gold-lalr-action 35,3,20),
				$(gold-lalr-action 37,3,21),
			),$(gold-lalr-state 14,
				$(gold-lalr-action 0,2,6),
			),$(gold-lalr-state 15,
				$(gold-lalr-action 8,1,13),
				$(gold-lalr-action 22,3,15),
				$(gold-lalr-action 24,3,22),
				$(gold-lalr-action 13,2,20),
				$(gold-lalr-action 16,2,20),
			),$(gold-lalr-state 16,
				$(gold-lalr-action 13,1,23),
				$(gold-lalr-action 26,3,24),
			),$(gold-lalr-state 17,
				$(gold-lalr-action 0,2,0),
			),$(gold-lalr-state 18,
				$(gold-lalr-action 0,2,34),
				$(gold-lalr-action 3,2,34),
				$(gold-lalr-action 4,2,34),
				$(gold-lalr-action 5,2,34),
				$(gold-lalr-action 7,2,34),
				$(gold-lalr-action 8,2,34),
				$(gold-lalr-action 10,2,34),
				$(gold-lalr-action 13,2,34),
				$(gold-lalr-action 15,2,34),
				$(gold-lalr-action 16,2,34),
			),$(gold-lalr-state 19,
				$(gold-lalr-action 0,2,36),
				$(gold-lalr-action 8,2,36),
				$(gold-lalr-action 13,2,36),
				$(gold-lalr-action 15,2,36),
			),$(gold-lalr-state 20,
				$(gold-lalr-action 3,2,32),
				$(gold-lalr-action 4,2,32),
				$(gold-lalr-action 5,2,32),
				$(gold-lalr-action 8,2,32),
				$(gold-lalr-action 10,2,32),
				$(gold-lalr-action 13,2,32),
				$(gold-lalr-action 16,2,32),
			),$(gold-lalr-state 21,
				$(gold-lalr-action 3,1,25),
				$(gold-lalr-action 23,3,26),
				$(gold-lalr-action 8,2,24),
				$(gold-lalr-action 13,2,24),
				$(gold-lalr-action 16,2,24),
			),$(gold-lalr-state 22,
				$(gold-lalr-action 13,2,19),
				$(gold-lalr-action 16,2,19),
			),$(gold-lalr-state 23,
				$(gold-lalr-action 14,1,27),
			),$(gold-lalr-state 24,
				$(gold-lalr-action 0,2,8),
			),$(gold-lalr-state 25,
				$(gold-lalr-action 12,1,28),
				$(gold-lalr-action 14,1,29),
				$(gold-lalr-action 17,1,30),
				$(gold-lalr-action 19,1,31),
				$(gold-lalr-action 33,3,32),
				$(gold-lalr-action 34,3,33),
				$(gold-lalr-action 35,3,20),
				$(gold-lalr-action 37,3,34),
				$(gold-lalr-action 40,3,35),
				$(gold-lalr-action 42,3,36),
			),$(gold-lalr-state 26,
				$(gold-lalr-action 8,2,21),
				$(gold-lalr-action 13,2,21),
				$(gold-lalr-action 16,2,21),
			),$(gold-lalr-state 27,
				$(gold-lalr-action 9,1,37),
			),$(gold-lalr-state 28,
				$(gold-lalr-action 4,2,30),
				$(gold-lalr-action 5,2,30),
			),$(gold-lalr-state 29,
				$(gold-lalr-action 6,1,9),
				$(gold-lalr-action 4,2,35),
				$(gold-lalr-action 11,2,33),
			),$(gold-lalr-state 30,
				$(gold-lalr-action 4,2,29),
				$(gold-lalr-action 5,2,29),
			),$(gold-lalr-state 31,
				$(gold-lalr-action 4,2,28),
				$(gold-lalr-action 5,2,28),
			),$(gold-lalr-state 32,
				$(gold-lalr-action 5,1,38),
				$(gold-lalr-action 4,2,26),
			),$(gold-lalr-state 33,
				$(gold-lalr-action 4,1,39),
			),$(gold-lalr-state 34,
				$(gold-lalr-action 4,2,31),
				$(gold-lalr-action 5,2,31),
			),$(gold-lalr-state 35,
				$(gold-lalr-action 11,1,40),
			),$(gold-lalr-state 36,
				$(gold-lalr-action 4,1,41),
			),$(gold-lalr-state 37,
				$(gold-lalr-action 8,1,13),
				$(gold-lalr-action 21,3,42),
				$(gold-lalr-action 22,3,15),
				$(gold-lalr-action 24,3,43),
				$(gold-lalr-action 27,3,44),
				$(gold-lalr-action 10,2,11),
				$(gold-lalr-action 16,2,20),
			),$(gold-lalr-state 38,
				$(gold-lalr-action 14,1,45),
				$(gold-lalr-action 33,3,32),
				$(gold-lalr-action 34,3,46),
				$(gold-lalr-action 40,3,35),
			),$(gold-lalr-state 39,
				$(gold-lalr-action 8,2,22),
				$(gold-lalr-action 13,2,22),
				$(gold-lalr-action 16,2,22),
			),$(gold-lalr-state 40,
				$(gold-lalr-action 12,1,28),
				$(gold-lalr-action 14,1,4),
				$(gold-lalr-action 17,1,30),
				$(gold-lalr-action 19,1,31),
				$(gold-lalr-action 35,3,20),
				$(gold-lalr-action 37,3,34),
				$(gold-lalr-action 42,3,47),
			),$(gold-lalr-state 41,
				$(gold-lalr-action 8,2,23),
				$(gold-lalr-action 13,2,23),
				$(gold-lalr-action 16,2,23),
			),$(gold-lalr-state 42,
				$(gold-lalr-action 8,1,13),
				$(gold-lalr-action 21,3,42),
				$(gold-lalr-action 22,3,15),
				$(gold-lalr-action 24,3,43),
				$(gold-lalr-action 27,3,48),
				$(gold-lalr-action 10,2,11),
				$(gold-lalr-action 16,2,20),
			),$(gold-lalr-state 43,
				$(gold-lalr-action 16,1,49),
				$(gold-lalr-action 30,3,50),
			),$(gold-lalr-state 44,
				$(gold-lalr-action 10,1,51),
			),$(gold-lalr-state 45,
				$(gold-lalr-action 11,2,33),
			),$(gold-lalr-state 46,
				$(gold-lalr-action 4,2,25),
			),$(gold-lalr-state 47,
				$(gold-lalr-action 4,2,27),
				$(gold-lalr-action 5,2,27),
			),$(gold-lalr-state 48,
				$(gold-lalr-action 10,2,10),
			),$(gold-lalr-state 49,
				$(gold-lalr-action 14,1,4),
				$(gold-lalr-action 35,3,20),
				$(gold-lalr-action 37,3,52),
				$(gold-lalr-action 38,3,53),
				$(gold-lalr-action 39,3,54),
			),$(gold-lalr-state 50,
				$(gold-lalr-action 8,2,12),
				$(gold-lalr-action 10,2,12),
				$(gold-lalr-action 16,2,12),
			),$(gold-lalr-state 51,
				$(gold-lalr-action 0,2,9),
			),$(gold-lalr-state 52,
				$(gold-lalr-action 3,1,55),
				$(gold-lalr-action 31,3,56),
				$(gold-lalr-action 5,2,18),
				$(gold-lalr-action 8,2,18),
				$(gold-lalr-action 10,2,18),
				$(gold-lalr-action 16,2,18),
			),$(gold-lalr-state 53,
				$(gold-lalr-action 5,1,57),
				$(gold-lalr-action 8,2,15),
				$(gold-lalr-action 10,2,15),
				$(gold-lalr-action 16,2,15),
			),$(gold-lalr-state 54,
				$(gold-lalr-action 8,2,13),
				$(gold-lalr-action 10,2,13),
				$(gold-lalr-action 16,2,13),
			),$(gold-lalr-state 55,
				$(gold-lalr-action 14,1,45),
				$(gold-lalr-action 33,3,32),
				$(gold-lalr-action 34,3,58),
				$(gold-lalr-action 40,3,35),
			),$(gold-lalr-state 56,
				$(gold-lalr-action 5,2,16),
				$(gold-lalr-action 8,2,16),
				$(gold-lalr-action 10,2,16),
				$(gold-lalr-action 16,2,16),
			),$(gold-lalr-state 57,
				$(gold-lalr-action 14,1,4),
				$(gold-lalr-action 35,3,20),
				$(gold-lalr-action 37,3,52),
				$(gold-lalr-action 38,3,53),
				$(gold-lalr-action 39,3,59),
			),$(gold-lalr-state 58,
				$(gold-lalr-action 4,1,60),
			),$(gold-lalr-state 59,
				$(gold-lalr-action 8,2,14),
				$(gold-lalr-action 10,2,14),
				$(gold-lalr-action 16,2,14),
			),$(gold-lalr-state 60,
				$(gold-lalr-action 5,2,17),
				$(gold-lalr-action 8,2,17),
				$(gold-lalr-action 10,2,17),
				$(gold-lalr-action 16,2,17),
			)
		)# Total 61 LALR state(s).

	)
endef # __gold_$(gold_grammar)_parser

$(def_all)

