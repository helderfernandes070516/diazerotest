***Settings***
Documentation    Arquivo de Mapeamento de arquivos
########################################################################
##                                                                    ##
##                    Libraries de todo o projeto                     ##
##                                                                    ##
## #####################################################################
## CRIADO POR: HELDER FERNANDES 									  ##
## DATA: 06/05/2024												  ##
## ÁREA: QUALITY ASSURANCE                                            ##
## #####################################################################
Library         SeleniumLibrary
Library         FakerLibrary       locale=pt_BR
Library         DateTime
Library         String
Library         DebugLibrary

########################################################
#                         KeywordS                     #
########################################################
Resource        ../Utils/common.robot
Resource        ../auto/keywords/kws_signin.robot
Resource        ../auto/keywords/kws_signup.robot
Resource        ../auto/keywords/kws_myaccount.robot

########################################################
#                         Pages                        #
########################################################
Resource        ../auto/elements/ets_signin.robot
Resource        ../auto/elements/ets_signup.robot
Resource        ../auto/elements/ets_myaccount.robot

########################################################
#                          Data                        #
########################################################
Variables       ../auto/data/login/credentials.yaml
Variables       ../auto/data/login/messages.yaml

########################################################
#                     Hooks /Utils                     #
########################################################
Resource        hooks.robot
Variables       hooks.yaml
