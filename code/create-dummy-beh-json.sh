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
					"BASDrive": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3
					"BASFunSeeking": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3										
					"BASRewardResponsiveness": [$(insert-random-data.sh 'prob')]
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
					"AbsoluteProblemDensity": [$(insert-random-data.sh 'prob')],
					"Subscales": {
EOF
cat <<EOF >> $3						
						"SubstanceUse": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Behavior": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Health": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Emotion": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Social": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Family": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"School": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Work": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Peer": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Leisure": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3
						"Lie": [$(insert-random-data.sh 'deca-scale')]						
					},
EOF
cat <<EOF >> $3											
					"Antisocial": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3											
					"MoodDisorders": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3											
					"ADHD": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3											
					"Violence":[$(insert-random-data.sh 'deca-scale')]
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
					"Score": [$(insert-random-data.sh 'deca-scale')]
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
					"Belief_Parent_Approve": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Belief_Peer_Approve": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Belief_Parent_Use": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Belief_Peer_Use": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Pos_Alc_Expectancy": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Neg_Alc_Expectancy": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Close_Parents": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3											
					"Parental_Monitoring": [$(insert-random-data.sh 'deca-scale')]
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
					"Score": [$(insert-random-data.sh 'deca-scale')]
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
					"Score": [$(insert-random-data.sh 'deca-scale')]
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
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale')
					},  
EOF
cat <<EOF >> $3						
					"Amphetamines/Stimulants/Uppers": {
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale')
					},	
EOF
cat <<EOF >> $3					
					"Cocaine/Crack": {
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale')
					},  
EOF
cat <<EOF >> $3
					"Prescription/OvertheCounter": {
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale'),
					},
EOF
cat <<EOF >> $3
					"Opiates/Heroin/Morphine/Quaaludes/Barbiturates/Methadone/PCP/TranquilizerPills": {
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale')
					}, 
EOF
cat <<EOF >> $3
					"LSD/Hallucinogens": {
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale')
					}, 
EOF
cat <<EOF >> $3
					"Ectasy": {
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale')
					},
EOF
cat <<EOF >> $3			
					"Marijuana/SyntheticMarijuana/Spice": {
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale')
					},
EOF
cat <<EOF >> $3
					"Glue/Gasoline/OtherFumes": {
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale')
					},
EOF
cat <<EOF >> $3
					"Smoking/ChewingTobacco": {
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale')
					},
EOF
cat <<EOF >> $3
					"AnabolicSteroids": {
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale')
					},
EOF
cat <<EOF >> $3
					"Salvia": {
						"Use": $(insert-random-data.sh 'logical'),
						"Frequency": $(insert-random-data.sh 'deca-scale')
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
					"Inattention": $(insert-random-data.sh 'deca-scale'),
EOF
cat <<EOF >> $3					
					"Impulsivity": $(insert-random-data.sh 'deca-scale'),
EOF
cat <<EOF >> $3					
					"Temperament": $(insert-random-data.sh 'deca-scale')
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
						"Inhibit": $(insert-random-data.sh 'deca-scale'),
EOF
cat <<EOF >> $3						
						"Shift": $(insert-random-data.sh 'deca-scale'),
EOF
cat <<EOF >> $3						
						"EmotionalControl": $(insert-random-data.sh 'deca-scale'),
EOF
cat <<EOF >> $3						
						"Initiation": $(insert-random-data.sh 'deca-scale'),
EOF
cat <<EOF >> $3						
						"WorkingMemory": $(insert-random-data.sh 'deca-scale'),
EOF
cat <<EOF >> $3						
						"Planning": $(insert-random-data.sh 'deca-scale'),
EOF
cat <<EOF >> $3						
						"Organization": $(insert-random-data.sh 'deca-scale'),
EOF
cat <<EOF >> $3						
						"Monitoring": $(insert-random-data.sh 'deca-scale')
					},
EOF
cat <<EOF >> $3					
					"BehavioralRegulationIndex": $(insert-random-data.sh 'deca-scale'),
EOF
cat <<EOF >> $3					
					"Meta-CognitionIndex": $(insert-random-data.sh 'deca-scale'),
EOF
cat <<EOF >> $3					
					"GlobalExecutiveComposite": $(insert-random-data.sh 'deca-scale')									
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
					"AbsoluteProblemDensity": [$(insert-random-data.sh 'prob')],
					"Subscales": {
EOF
cat <<EOF >> $3						
						"SubstanceUse": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Behavior": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Health": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Emotion": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Social": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Family": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"School": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Work": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Peer": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3												
						"Leisure": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3
						"Lie": [$(insert-random-data.sh 'deca-scale')]						
					},
EOF
cat <<EOF >> $3											
					"Antisocial": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3											
					"MoodDisorders": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3											
					"ADHD": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3											
					"Violence":[$(insert-random-data.sh 'deca-scale')]
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
					"FamilyHistoryDensity-Alcohol": [$(insert-random-data.sh 'prob')],
					"FPA-Alcohol": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3					
					"FamilyHistoryDensity-Drugs": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3					
					"FPA-Drugs": [$(insert-random-data.sh 'prob')]					
				}
			},
			"Raw": {
EOF
cat <<EOF >> $3				
				"MaternalGrandMother-Alcohol": [$(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalGrandFather-Alcohol": [$(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalAunt(s)-Alcohol": [$(insert-random-data.sh 'logical') $(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalUncle(s)-Alcohol": [$(insert-random-data.sh 'logical') $(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalGrandMother-Alcohol": [$(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalGrandFather-Alcohol": [$(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalAunt(s)-Alcohol": [$(insert-random-data.sh 'logical') $(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalUncle(s)-Alcohol": [$(insert-random-data.sh 'logical') $(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"Brother(s)-Alcohol": [$(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"Sister(s)-Alcohol": [$(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalGrandMother-Alcohol": [$(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalGrandFather-Drugs": [$(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalAunt(s)-Drugs": [$(insert-random-data.sh 'logical') $(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"MaternalUncle(s)-Drugs": [$(insert-random-data.sh 'logical') $(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalGrandMother-Drugs": [$(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalGrandFather-Drugs": [$(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalAunt(s)-Drugs": [$(insert-random-data.sh 'logical') $(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"PaternalUncle(s)-Drugs": [$(insert-random-data.sh 'logical') $(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"Brother(s)-Drugs": [$(insert-random-data.sh 'logical')],
EOF
cat <<EOF >> $3				
				"Sister(s)-Drugs": [$(insert-random-data.sh 'logical')]				
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
					"PeformanceIQ": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3					
					"VerbalIQ": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3					
					"TotalIQ": [$(insert-random-data.sh)]
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
					"Score": [$(insert-random-data.sh 'deca-scale')]
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
					"Score": [$(insert-random-data.sh 'prob')]
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
					"Score": [$(insert-random-data.sh 'deca-scale')]
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
							"Positive": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Negative": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Neutral": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Alcohol": [$(insert-random-data.sh)]							
						},
						"Stdev": {
EOF
cat <<EOF >> $3							
							"Positive": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Negative": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Neutral": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Alcohol": [$(insert-random-data.sh)]														
						}					
					},
					"Performance": {
EOF
cat <<EOF >> $3						
						"Positive": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Negative": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Neutral": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Alcohol": [$(insert-random-data.sh 'prob')]
					},
					"Numtrials": {
EOF
cat <<EOF >> $3						
						"Positive": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"Negative": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"Neutral": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"Alcohol": [$(insert-random-data.sh)]														
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
							"Anger": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Fear": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Hapiness": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Neutral": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Sadness": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Surprise": [$(insert-random-data.sh)]
						},
						"Stdev": {
EOF
cat <<EOF >> $3							
							"Anger": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Fear": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Hapiness": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Neutral": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Sadness": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Surprise": [$(insert-random-data.sh)]							
						}
					},
					"Performance": {
EOF
cat <<EOF >> $3						
						"Anger": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Fear": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Hapiness": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Neutral": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Sadness": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Surprise": [$(insert-random-data.sh 'prob')]
					},
					"Numtrials": {
EOF
cat <<EOF >> $3						
							"Anger": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Fear": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Hapiness": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Neutral": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Sadness": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Surprise": [$(insert-random-data.sh)]						
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
							"Hit": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Miss": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"CorrectRejection": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"FalseAlarm": [$(insert-random-data.sh)],
						},
						"Stdev": {
EOF
cat <<EOF >> $3							
							"Hit": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Miss": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"CorrectRejection": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"FalseAlarm": [$(insert-random-data.sh)],
						}						
					},
					"Performance": {
EOF
cat <<EOF >> $3						
						"Hit": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Miss": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3
						"CorrectRejection": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"FalseAlarm": [$(insert-random-data.sh 'prob')],
					},
					"Numtrials": {
EOF
cat <<EOF >> $3						
						"Hit": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Miss": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"CorrectRejection": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"FalseAlarm": [$(insert-random-data.sh 'prob')],						
					},
					"SignalDetection": {
EOF
cat <<EOF >> $3						
						"dprime": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Aprime": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"beta": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"c": [$(insert-random-data.sh 'prob')],
					},
					"Numtrials": {
EOF
cat <<EOF >> $3						
						"Hit": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"Miss": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"CorrectRejection": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"FalseAlarm": [$(insert-random-data.sh)],						
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
							"4Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert-random-data.sh 'deca-scale')]
						}, 
						"WithinErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert-random-data.sh 'deca-scale')]
						}, 						
						"SWM-BetweenErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert-random-data.sh 'deca-scale')]
						}, 
						"SWM-DoubleErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert-random-data.sh 'deca-scale')]
						}, 
						"SWM-Strategy": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert-random-data.sh 'deca-scale')]
						}, 
					},
					"ZScored": {
						"TotalErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert-random-data.sh 'deca-scale')]
						}, 
						"WithinErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert-random-data.sh 'deca-scale')]
						}, 						
						"SWM-BetweenErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert-random-data.sh 'deca-scale')]
						}, 
						"SWM-DoubleErrors": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert-random-data.sh 'deca-scale')]
						}, 
						"SWM-Strategy": {
EOF
cat <<EOF >> $3							
							"4Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"6Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"8Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"10Boxes": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"12Boxes": [$(insert-random-data.sh 'deca-scale')]
						},						
					},
					"MeanFirstResponseTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},
					"MedianFirstResponseTime": {
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},
					"StdevFirstResponseTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},
					"MeanLastResponseTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},
					"MedianLastResponseTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},
					"StdevLastResponseTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},
					"MeanTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},
					"MedianTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},
					"StdevTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},
					"MeanTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},
					"MedianTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},
					"StdevTokenSearchTime": {
EOF
cat <<EOF >> $3						
						"4Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"6Boxes": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"8Boxes": [$(insert-random-data.sh)]
					},	
EOF
cat <<EOF >> $3									
					"Numtrials": [$(insert-random-data.sh)]
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
							"2-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert-random-data.sh)]
						},
						"MeanSubseqThinkTime": {
EOF
cat <<EOF >> $3							
							"2-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert-random-data.sh)]
						},
						"MeanMoves": {
EOF
cat <<EOF >> $3							
							"2-Moves": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert-random-data.sh 'deca-scale')]						
						},
EOF
cat <<EOF >> $3						
						"ProblemsSolvedinMinMoves": [$(insert-random-data.sh 'deca-scale')]
					},
					"ZScored": {
						"MeanInitialThinkTime": {
EOF
cat <<EOF >> $3							
							"2-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert-random-data.sh)]
						},
						"MeanSubseqThinkTime": {
EOF
cat <<EOF >> $3							
							"2-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert-random-data.sh)]
						},
						"MeanMoves": {
EOF
cat <<EOF >> $3							
							"2-Moves": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"3-Moves": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"4-Moves": [$(insert-random-data.sh 'deca-scale')],
EOF
cat <<EOF >> $3							
							"5-Moves": [$(insert-random-data.sh 'deca-scale')]													
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
						"Regular": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"Cord.Borges": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"AUClogd.Borges": [$(insert-random-data.sh 'prob')]
					},
					"IndifferencePoint": {
						"Raw": {
EOF
cat <<EOF >> $3							
							"Mean": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Present": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"1day": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"2days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"10days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"30days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"80days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"360days": [$(insert-random-data.sh)]
						},
						"Normalized": {
EOF
cat <<EOF >> $3							
							"Mean": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Present": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"1day": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"2days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"10days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"30days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"80days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"360days": [$(insert-random-data.sh)]
						}						
					},
					"ReactionTime": {
EOF
cat <<EOF >> $3						
						"1day": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"2days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"10days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"30days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"80days": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"360days": [$(insert-random-data.sh)]
					},
EOF
cat <<EOF >> $3					
					"Numtrials": [$insert(insert-random-data.sh)]
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
						"RunTime": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"LatencyTime": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"ButtonClicks": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"NotOnButtonError": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"OutofSequenceError": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"LineLength": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"LineLengthPct": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"Speed":[$(insert-random-data.sh)],
					},
					"Session-B": {
EOF
cat <<EOF >> $3						
						"RunTime": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"LatencyTime": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"ButtonClicks": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"NotOnButtonError": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"OutofSequenceError": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"LineLength": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"LineLengthPct": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
						"Speed":[$(insert-random-data.sh)],
					}					
				},
EOF
cat <<EOF >> $3				
				"Numtrials": [$(insert-random-data.sh)]
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
							"Win": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Loss": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"RiskyChoice": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"SafeChoice": [$(insert-random-data.sh)],
						},
						"Stdev": {
EOF
cat <<EOF >> $3							
							"Win": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"Loss": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"RiskyChoice": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3							
							"SafeChoice": [$(insert-random-data.sh)],
						}
					},
					"Performance": {
EOF
cat <<EOF >> $3						
						"pWin": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"pLoss": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"pRiskyChoice": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"pRiskyChoice|win": [$(insert-random-data.sh 'prob')],
EOF
cat <<EOF >> $3						
						"pRiskyChoice|lose":[$(insert-random-data.sh 'prob')],
					}
				},
EOF
cat <<EOF >> $3				
				"Numtrials": {
					"Win": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
					"Loss": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
					"RiskyChoice": [$(insert-random-data.sh)],
EOF
cat <<EOF >> $3						
					"SafeChoice": [$(insert-random-data.sh)]
				} 
			}
		}
	}
}
EOF