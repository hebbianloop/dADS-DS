#!/bin/bash
#
# Create Dummy Behavioral Data for a Subject

# first input: subject name
# second input: session
# third input: full path to outputfile 

subject=$1

cat <<EOF >> $3
{"$subject" : {
	"Description": "Behavior Collected from Adolescent Development Study in JavaScript Object Notation Format (JSON).\n\n !! This is a dummy dataset generated with random numbers.",
	"Session": "$2",
	"Child-Surveys": {
		"BISBAS": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3					
					"BASDrive": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3
					"BASFunSeeking": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3										
					"BASRewardResponsiveness": [$(insert_random_data 'prob')]
				},
				"Raw": []
			}
		},
		"DUSI": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3					
					"AbsoluteProblemDensity": [$(insert_random_data 'prob')],
					"Subscales": {
EOF
cat <<EOF >> $3						
						"SubstanceUse": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Behavior": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Health": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Emotion": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Social": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Family": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"School": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Work": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Peer": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Leisure": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3
						"Lie": [$(insert_random_data 'deca-scale')]						
					},
EOF
cat <<EOF >> $3											
					"Antisocial": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3											
					"MoodDisorders": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3											
					"ADHD": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3											
					"Violence":[$(insert_random_data 'deca-scale')]
				},
				"Raw": []
			}
		},
		"GamblingInventory": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3											
					"Score": [$(insert_random_data 'deca-scale')]
				},
				"Raw": []
			}
		},
		"Moderators": {
			"Description": [],
			"References": [],
			"DataProblems": []
			"Data:"{
				"Scored": {
EOF
cat <<EOF >> $3											
					"Belief_Parent_Approve": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Belief_Peer_Approve": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Belief_Parent_Use": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Belief_Peer_Use": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Pos_Alc_Expectancy": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Neg_Alc_Expectancy": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Close_Parents": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Parental_Monitoring": [$(insert_random_data 'deca-scale')]
				},
				"Raw": []
			}
		},
		"Responsibility": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3											
					"Score": [$(insert_random_data 'deca-scale')]
				},
				"Raw": []
			}
		},
		"SleepHabits": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3											
					"Score": [$(insert_random_data 'deca-scale')]
				},
				"Raw": []
			}
		},
		"SelfReportedDrugUse": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3											
					"Alcohol": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale')
					},  
EOF
cat <<EOF >> $3						
					"Amphetamines/Stimulants/Uppers": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale')
					},	
EOF
cat <<EOF >> $3					
					"Cocaine/Crack": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale')
					},  
EOF
cat <<EOF >> $3
					"Prescription/OvertheCounter": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale'),
					},
EOF
cat <<EOF >> $3
					"Opiates/Heroin/Morphine/Quaaludes/Barbiturates/Methadone/PCP/TranquilizerPills": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale')
					}, 
EOF
cat <<EOF >> $3
					"LSD/Hallucinogens": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale')
					}, 
EOF
cat <<EOF >> $3
					"Ectasy": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale')
					},
EOF
cat <<EOF >> $3			
					"Marijuana/SyntheticMarijuana/Spice": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale')
					},
EOF
cat <<EOF >> $3
					"Glue/Gasoline/OtherFumes": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale')
					},
EOF
cat <<EOF >> $3
					"Smoking/ChewingTobacco": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale')
					},
EOF
cat <<EOF >> $3
					"AnabolicSteroids": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale')
					},
EOF
cat <<EOF >> $3
					"Salvia": {
						"Use": $(insert_random_data 'logical'),
						"Frequency": $(insert_random_data 'deca-scale')
					}
				}
			}
		}
	},
	"Parent-Surveys": {
		"ADHD": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3					
					"Inattention": $(insert_random_data 'deca-scale'),
EOF
cat <<EOF >> $3					
					"Impulsivity": $(insert_random_data 'deca-scale'),
EOF
cat <<EOF >> $3					
					"Temperament": $(insert_random_data 'deca-scale')
				},
				"Raw": []
			}
		},
		"BRIEF": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
					"Subscales": {
EOF
cat <<EOF >> $3						
						"Inhibit": $(insert_random_data 'deca-scale'),
EOF
cat <<EOF >> $3						
						"Shift": $(insert_random_data 'deca-scale'),
EOF
cat <<EOF >> $3						
						"EmotionalControl": $(insert_random_data 'deca-scale'),
EOF
cat <<EOF >> $3						
						"Initiation": $(insert_random_data 'deca-scale'),
EOF
cat <<EOF >> $3						
						"WorkingMemory": $(insert_random_data 'deca-scale'),
EOF
cat <<EOF >> $3						
						"Planning": $(insert_random_data 'deca-scale'),
EOF
cat <<EOF >> $3						
						"Organization": $(insert_random_data 'deca-scale'),
EOF
cat <<EOF >> $3						
						"Monitoring": $(insert_random_data 'deca-scale')
					},
EOF
cat <<EOF >> $3					
					"BehavioralRegulationIndex": $(insert_random_data 'deca-scale'),
EOF
cat <<EOF >> $3					
					"Meta-CognitionIndex": $(insert_random_data 'deca-scale'),
EOF
cat <<EOF >> $3					
					"GlobalExecutiveComposite": $(insert_random_data 'deca-scale')									
				},
				"Raw": []
			}
		},
		"DUSI-P": {
			"Description": "DUSI scores from parent's perceptions of child",
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3					
					"AbsoluteProblemDensity": [$(insert_random_data 'prob')],
					"Subscales": {
EOF
cat <<EOF >> $3						
						"SubstanceUse": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Behavior": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Health": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Emotion": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Social": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Family": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"School": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Work": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Peer": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3												
						"Leisure": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3
						"Lie": [$(insert_random_data 'deca-scale')]						
					},
EOF
cat <<EOF >> $3											
					"Antisocial": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3											
					"MoodDisorders": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3											
					"ADHD": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3											
					"Violence":[$(insert_random_data 'deca-scale')]
				},
				"Raw": []
			}
		},
		"FamilyHistoryDrugUse": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3					
					"FamilyHistoryDensity-Alcohol": [$(insert_random_data 'prob')],
					"FPA-Alcohol": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3					
					"FamilyHistoryDensity-Drugs": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3					
					"FPA-Drugs": [$(insert_random_data 'prob')]					
				}
			},
			"Raw": {
EOF
cat <<EOF >> $3				
				"MaternalGrandMother-Alcohol": [$(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalGrandFather-Alcohol": [$(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalAunt(s)-Alcohol": [$(insert_random_data 'logical') $(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalUncle(s)-Alcohol": [$(insert_random_data 'logical') $(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalGrandMother-Alcohol": [$(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalGrandFather-Alcohol": [$(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalAunt(s)-Alcohol": [$(insert_random_data 'logical') $(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalUncle(s)-Alcohol": [$(insert_random_data 'logical') $(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"Brother(s)-Alcohol": [$(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"Sister(s)-Alcohol": [$(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalGrandMother-Alcohol": [$(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalGrandFather-Drugs": [$(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalAunt(s)-Drugs": [$(insert_random_data 'logical') $(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalUncle(s)-Drugs": [$(insert_random_data 'logical') $(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalGrandMother-Drugs": [$(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalGrandFather-Drugs": [$(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalAunt(s)-Drugs": [$(insert_random_data 'logical') $(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalUncle(s)-Drugs": [$(insert_random_data 'logical') $(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"Brother(s)-Drugs": [$(insert_random_data 'logical')],
EOF
cat <<EOF >> $3				
				"Sister(s)-Drugs": [$(insert_random_data 'logical')]				
			}
		},
		"KBIT": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3					
					"PeformanceIQ": [$(insert_random_data)],
EOF
cat <<EOF >> $3					
					"VerbalIQ": [$(insert_random_data)],
EOF
cat <<EOF >> $3					
					"TotalIQ": [$(insert_random_data)]
				},
				"Raw": []
			}
		},	
		"PerinatalTrauma": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3					
					"Score": [$(insert_random_data 'deca-scale')]
				},
				"Raw": []
			}
		},
		"RAVLT": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3					
					"Score": [$(insert_random_data 'prob')]
				},
				"Raw": []
			}
		},		
		"Responsibility": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"Scored": {
EOF
cat <<EOF >> $3					
					"Score": [$(insert_random_data 'deca-scale')]
				},
				"Raw": []
			}
		}
	},
	"Neuropsych": {
		"EmotionalStroop": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"TrialsRTs": [],
				"Condition": [],
				"CorrectTrialResponses": [],
				"Onset": [],
				"Duration": [],
				"Block": [],
				"Scored": {
					"ReactionTime": {
						"Mean": {
EOF
cat <<EOF >> $3							
							"Positive": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Negative": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Neutral": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Alcohol": [$(insert_random_data)]							
						},
						"Stdev": {
EOF
cat <<EOF >> $3							
							"Positive": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Negative": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Neutral": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Alcohol": [$(insert_random_data)]														
						}					
					},
					"Performance": {
EOF
cat <<EOF >> $3						
						"Positive": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Negative": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Neutral": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Alcohol": [$(insert_random_data 'prob')]
					},
					"Numtrials": {
EOF
cat <<EOF >> $3						
						"Positive": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"Negative": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"Neutral": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"Alcohol": [$(insert_random_data)]														
					},										
				}
			}
		},
		"EmotionalFaceRecognition": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"TrialsRTs": [],
				"Condition": [],
				"CorrectTrialResponses": [],
				"Onset": [],
				"Duration": [],
				"Block": [],				
				"Scored": {
					"ReactionTime": {
						"Mean": {
EOF
cat <<EOF >> $3							
							"Anger": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Fear": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Hapiness": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Neutral": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Sadness": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Surprise": [$(insert_random_data)]
						},
						"Stdev": {
EOF
cat <<EOF >> $3							
							"Anger": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Fear": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Hapiness": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Neutral": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Sadness": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Surprise": [$(insert_random_data)]							
						}
					},
					"Performance": {
EOF
cat <<EOF >> $3						
						"Anger": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Fear": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Hapiness": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Neutral": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Sadness": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Surprise": [$(insert_random_data 'prob')]
					},
					"Numtrials": {
EOF
cat <<EOF >> $3						
							"Anger": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Fear": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Hapiness": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Neutral": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Sadness": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Surprise": [$(insert_random_data)]						
					}
				},
			}
		},
		"GoNoGo": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"TrialsRTs": [],
				"Condition": [],
				"CorrectTrialResponses": [],
				"Onset": [],
				"Duration": [],
				"Block": [],				
				"Scored": {
					"ReactionTime": {
						"Mean": {
EOF
cat <<EOF >> $3							
							"Hit": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Miss": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"CorrectRejection": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"FalseAlarm": [$(insert_random_data)],
						},
						"Stdev": {
EOF
cat <<EOF >> $3							
							"Hit": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Miss": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"CorrectRejection": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"FalseAlarm": [$(insert_random_data)],
						}						
					},
					"Performance": {
EOF
cat <<EOF >> $3						
						"Hit": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Miss": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3
						"CorrectRejection": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"FalseAlarm": [$(insert_random_data 'prob')],
					},
					"Numtrials": {
EOF
cat <<EOF >> $3						
						"Hit": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Miss": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"CorrectRejection": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"FalseAlarm": [$(insert_random_data 'prob')],						
					},
					"SignalDetection": {
EOF
cat <<EOF >> $3						
						"dprime": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Aprime": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"beta": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"c": [$(insert_random_data 'prob')],
					},
					"Numtrials": {
EOF
cat <<EOF >> $3						
						"Hit": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"Miss": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"CorrectRejection": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"FalseAlarm": [$(insert_random_data)],						
					}
				}
			}
		},
		"SpatialWorkingMemory": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"TrialsRTs": [],
				"Condition": [],
				"CorrectTrialResponses": [],
				"Onset": [],
				"Duration": [],
				"Block": [],				
				"Scored": {
					"RawScore": {
						"TotalErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert_random_data 'deca-scale')]
						}, 
						"WithinErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert_random_data 'deca-scale')]
						}, 						
						"SWM-BetweenErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert_random_data 'deca-scale')]
						}, 
						"SWM-DoubleErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert_random_data 'deca-scale')]
						}, 
						"SWM-Strategy": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert_random_data 'deca-scale')]
						}, 
					},
					"ZScored": {
						"TotalErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert_random_data 'deca-scale')]
						}, 
						"WithinErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert_random_data 'deca-scale')]
						}, 						
						"SWM-BetweenErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert_random_data 'deca-scale')]
						}, 
						"SWM-DoubleErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert_random_data 'deca-scale')]
						}, 
						"SWM-Strategy": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert_random_data 'deca-scale')]
						},						
					},
					"MeanFirstResponseTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},
					"MedianFirstResponseTime": {
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},
					"StdevFirstResponseTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},
					"MeanLastResponseTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},
					"MedianLastResponseTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},
					"StdevLastResponseTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},
					"MeanTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},
					"MedianTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},
					"StdevTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},
					"MeanTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},
					"MedianTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},
					"StdevTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert_random_data)]
					},	
EOF
cat <<EOF >> $3									
					"Numtrials": [$(insert_random_data)]
				}
			}
		},
		"StockingsofCambridge": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"TrialsRTs": [],
				"Condition": [],
				"CorrectTrialResponses": [],
				"Onset": [],
				"Duration": [],
				"Block": [],				
				"Scored": {
					"RawScore": {
						"MeanInitialThinkTime": {
EOF
cat <<EOF >> $3							
							"2-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert_random_data)]
						},
						"MeanSubseqThinkTime": {
EOF
cat <<EOF >> $3							
							"2-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert_random_data)]
						},
						"MeanMoves": {
EOF
cat <<EOF >> $3							
							"2-Moves": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert_random_data 'deca-scale')]						
						},
EOF
cat <<EOF >> $3						
						"ProblemsSolvedinMinMoves": [$(insert_random_data 'deca-scale')]
					},
					"ZScored": {
						"MeanInitialThinkTime": {
EOF
cat <<EOF >> $3							
							"2-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert_random_data)]
						},
						"MeanSubseqThinkTime": {
EOF
cat <<EOF >> $3							
							"2-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert_random_data)]
						},
						"MeanMoves": {
EOF
cat <<EOF >> $3							
							"2-Moves": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert_random_data 'deca-scale')],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert_random_data 'deca-scale')]													
						}
					}
				}
			}
		},
		"TemporalDicounting": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"TrialsRTs": [],
				"Condition": [],
				"CorrectTrialResponses": [],
				"Onset": [],
				"Duration": [],
				"Block": [],
				"Scored": {
					"AUC": {
EOF
cat <<EOF >> $3						
						"Regular": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"Cord.Borges": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"AUClogd.Borges": [$(insert_random_data 'prob')]
					},
					"IndifferencePoint": {
						"Raw": {
EOF
cat <<EOF >> $3							
							"Mean": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Present": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"1day": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"2days": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"10days": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"30days": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"80days": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"360days": [$(insert_random_data)]
						},
						"Normalized": {
EOF
cat <<EOF >> $3							
							"Mean": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Present": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"1day": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"2days": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"10days": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"30days": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"80days": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"360days": [$(insert_random_data)]
						}						
					},
					"ReactionTime": {
EOF
cat <<EOF >> $3						
						"1day": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"2days": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"10days": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"30days": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"80days": [$insert_random_data],
EOF
cat <<EOF >> $3						
						"360days": [$(insert_random_data)]
					},
EOF
cat <<EOF >> $3					
					"Numtrials": [$insert(insert_random_data)]
				}
			}
		},
		"Trails": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"TrialsRTs": [],
				"Condition": [],
				"CorrectTrialResponses": [],
				"Onset": [],
				"Duration": [],
				"Block": [],
				"Scored": {
					"Session-A": {
EOF
cat <<EOF >> $3						
						"RunTime": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"LatencyTime": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"ButtonClicks": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"NotOnButtonError": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"OutofSequenceError": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"LineLength": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"LineLengthPct": [$insert_random_data],
EOF
cat <<EOF >> $3						
						"Speed":[$(insert_random_data)],
					},
					"Session-B": {
EOF
cat <<EOF >> $3						
						"RunTime": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"LatencyTime": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"ButtonClicks": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"NotOnButtonError": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"OutofSequenceError": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"LineLength": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
						"LineLengthPct": [$insert_random_data],
EOF
cat <<EOF >> $3						
						"Speed":[$(insert_random_data)],
					}					
				},
EOF
cat <<EOF >> $3				
				"Numtrials": [$(insert_random_data)]
		},
		"WheelOfFortune": {
			"Description": [],
			"References": [],
			"DataProblems": [],
			"Data": {
				"TrialsRTs": [],
				"Condition": [],
				"CorrectTrialResponses": [],
				"Onset": [],
				"Duration": [],
				"Block": [],				
				"Scored": {
					"ReactionTime": {
						"Mean": {
EOF
cat <<EOF >> $3							
							"Win": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Loss": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"RiskyChoice": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"SafeChoice": [$(insert_random_data)],
						},
						"Stdev": {
EOF
cat <<EOF >> $3							
							"Win": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"Loss": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"RiskyChoice": [$(insert_random_data)],
EOF
cat <<EOF >> $3							
							"SafeChoice": [$(insert_random_data)],
						}
					},
					"Performance": {
EOF
cat <<EOF >> $3						
						"pWin": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"pLoss": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"pRiskyChoice": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"pRiskyChoice|win": [$(insert_random_data 'prob')],
EOF
cat <<EOF >> $3						
						"pRiskyChoice|lose":[$(insert_random_data 'prob')],
					}
				},
EOF
cat <<EOF >> $3				
				"Numtrials": {
					"Win": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
					"Loss": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
					"RiskyChoice": [$(insert_random_data)],
EOF
cat <<EOF >> $3						
					"SafeChoice": [$(insert_random_data)]
				} 
			}
		}
	}
}
EOF