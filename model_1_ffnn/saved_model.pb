??
?'?&
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-0-g3f878cff5b68??
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
?N?*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	?*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
t
cond_1/Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *!
shared_namecond_1/Adam/iter
m
$cond_1/Adam/iter/Read/ReadVariableOpReadVariableOpcond_1/Adam/iter*
_output_shapes
: *
dtype0	
x
cond_1/Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namecond_1/Adam/beta_1
q
&cond_1/Adam/beta_1/Read/ReadVariableOpReadVariableOpcond_1/Adam/beta_1*
_output_shapes
: *
dtype0
x
cond_1/Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namecond_1/Adam/beta_2
q
&cond_1/Adam/beta_2/Read/ReadVariableOpReadVariableOpcond_1/Adam/beta_2*
_output_shapes
: *
dtype0
v
cond_1/Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namecond_1/Adam/decay
o
%cond_1/Adam/decay/Read/ReadVariableOpReadVariableOpcond_1/Adam/decay*
_output_shapes
: *
dtype0
?
cond_1/Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namecond_1/Adam/learning_rate

-cond_1/Adam/learning_rate/Read/ReadVariableOpReadVariableOpcond_1/Adam/learning_rate*
_output_shapes
: *
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name473*
value_dtype0	
}
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_23*
value_dtype0	
x
current_loss_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namecurrent_loss_scale
q
&current_loss_scale/Read/ReadVariableOpReadVariableOpcurrent_loss_scale*
_output_shapes
: *
dtype0
h

good_stepsVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
good_steps
a
good_steps/Read/ReadVariableOpReadVariableOp
good_steps*
_output_shapes
: *
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
"cond_1/Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*3
shared_name$"cond_1/Adam/embedding/embeddings/m
?
6cond_1/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOp"cond_1/Adam/embedding/embeddings/m* 
_output_shapes
:
?N?*
dtype0
?
cond_1/Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*+
shared_namecond_1/Adam/dense/kernel/m
?
.cond_1/Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/dense/kernel/m*
_output_shapes
:	?*
dtype0
?
cond_1/Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecond_1/Adam/dense/bias/m
?
,cond_1/Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adam/dense/bias/m*
_output_shapes
:*
dtype0
?
"cond_1/Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*3
shared_name$"cond_1/Adam/embedding/embeddings/v
?
6cond_1/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOp"cond_1/Adam/embedding/embeddings/v* 
_output_shapes
:
?N?*
dtype0
?
cond_1/Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*+
shared_namecond_1/Adam/dense/kernel/v
?
.cond_1/Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/dense/kernel/v*
_output_shapes
:	?*
dtype0
?
cond_1/Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecond_1/Adam/dense/bias/v
?
,cond_1/Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adam/dense/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?N*
dtype0*??
value??B???NBtheBtoBofBandBaBinBthatBisBforBonBasBitBwithBheBwasBareBbeBbyBthisBhaveBnotBhisBhasBatBfromBsaidBbutBtrumpBtheyBanBwhoBiBwillBweBclintonBorBaboutByouBtheirBmoreBwouldBusBallBherBbeenBifBoneBpeopleBwereBwhatBsheBhadBwhichBnewBoutBitsBwhenBsoBupB—BthanBcanBthereBnoBourBstateBalsoB	presidentBotherBafterBcampaignBjustBdoBoverBsomeBhillaryBlikeBintoBobamaBthemBcouldBevenBtimeBnowBhowBstatesBonlyBmostBhimBbecauseBmanyB
republicanB–BthoseBfirstBtwoBelectionBagainstBtheseBanyB	politicalByearsBgetB
governmentBamericanBpartyBwhileBhouseByourBgoingBworldBbeforeBlastBmakeBwhiteBpresidentialBbeingBwhereBmyBit’sBnewsBdonaldBmayBthinkBshouldBsayBveryBwayB
democraticBmuchBdidBtoldBthenB2016BwarBsandersBpercentBbackBknowBvotersBcountryBunitedBnationalBrepublicansBsuchBmediaBwellBsupportByearBmadeBformerBrightBseeBbothBvoteBtakeBstillBdownBsinceBduringBthroughBpoliceBsaysBdayBbetweenB	candidateBpublicB	accordingBwantBlawBhereBanotherBownBwhyBamericaBsameBpolicyBcruzBmeB	americansBoffB	democratsBgoBdon’tBgopBdebateBunderB
washingtonBpartBbushBsecurityBeveryBneedBneverBdoesBgoodBmilitaryBpowerBamongBworkB	includingBrussiaBbillBweekBfbiBfederalB
candidatesBcourtBuseBcongressBnextBchangeBaroundBwhetherBtooBmightB	trump’sBraceBcomeB
departmentBforeignBemailBcalledBfarBwomenBlongB“theBmoneyBsystemBtimesBreallyBwinBendBgroupBcaseBthingsBfactBmillionByorkBjohnBthreeBlikelyBsenateBemailsBblackBputBbelieveB	officialsBwithoutBalreadyBpointBsayingBusedB	secretaryBhelpBreportBbigBdaysBleftBdealBprimaryBrecentBsyriaB	somethingBmanBpastBhoweverBofficeBleastBagainBthoughBgeneralBfoundBfewBtopByetBclinton’sBhealthBlookB“iBrussianBrealBbetterBinformationBadministrationBattackBbecomeBissueBlifeBlessBrubioB
supportersBtodayBgotBmustBoctoberBjusticeBiranBnovemberBnomineeBshowBclearBaskedBcameBrightsBisisBplaceBearlyBgreatBeachBpressBeconomicBawayBlotBcityBsocialBthat’sBcontrolBnumberBnightBhistoryBpoliticsBquestionBlittleBseveralBmembersBtuesdayBactuallyBconservativeBissuesBonceBleadersB	importantBothersBtookBnuclearBeverBenoughBattacksBinvestigationBsenBmonthsBfourBrunBhomeBlaterBamBvotingBkeepBvideoBfamilyBactBspeechBfreeBforcesBorderBbestBiraqBmajorBpostBuntilBplanBagoBdoingBgivenBcourseBthingBgiveBfoxBsecondB	differentBbehindBpollsBprocessBseenBreportedBthursdayBmakingBacrossB	committeeBclintonsBbusinessBmajorityBfindBcallB	statementBinternationalBdontBhighB	countriesBiowaB1BfloridaBsouthBevidenceBnothingBtryingBcnnBworkingBchildrenBsetBglobalBcareBgroupsBofficialBinsteadBpollB2012B	wednesdayBmatterBtaxBfightBislamicBalwaysB10BleadB
universityB
nominationBforceBtrumpsBmeansBpaulBmrBcloseBproblemBdoneBprivateBableBrunningBdirectorBhe’sBalmostBpossibleBfridayBimmigrationBwroteBoftenBhavingBdecisionBpersonBhumanBstoryB
conventionBkilledBbernieBstopBcontinueBaddedBwithinBleaderBmenBhimselfBnorthBnationBmonthBvotesBanythingBmiddleB	delegatesB	questionsBearlierBtakingBreasonBfutureBmondayBkindBcomesBwallBeconomyBratherBhardBprogramBwentBsourceB	interviewBwonBpointsBknownBtradeBmoveBsomeoneBstreetBcenterBjobBgettingB	financialBsureBreportsBfaceBdidn’tBalongBtrueBusingBpersonalB	doesn’tBsideBsenatorBnameBdefenseBsupremeBweeksB
foundationBdeathBestablishmentBtalkBlargeBthatsB…BeitherB“weBtakenBideaBshareB	followingBpayBcomingBfiveBvictoryBlineBkeyBactionBletBschoolB2015BnearlyBstartBreleasedByoungBviolenceB	electionsBdespiteBsimplyBneedsBmakesBgeorgeBsmallBtexasBsundayBwordsB	communityBteamBstrongB2BtogetherB
themselvesBfullBseemsBcommentsBlocalBbasedB2014BprobablyB2008BhesBfurtherBdataBcurrentBlivesBbadBwomanB	hampshireBchiefBexampleBwantsBi’mBchinaBbarackBairBliveBthoughtB	there’sBroleBanyoneBtellBbeganBarticleBcannotB	executiveBmillionsBwaterBlegalBfeelB	potentialBopenBfreedomBlostBmeetingBheldBtowardBlateBhopeBlookingBthreatBresultsBfacebookB
everythingB	announcedB
especiallyBoutsideBcan’tBisraelBcivilBresearchBeveryoneBmessageBgunBnationsBeffortBturnB20BputinB
presidencyBtalkingBsyrianBreadBeastBpoliciesBsentBgovernorBintelligenceBgovBofficersBrecentlyBmarchBresultB	obama’sBmeanBshowsBjobsBitselfBpositionBeventBmomentBwestBtryBviewB3BrulesBthirdBmarriageBgroundBlevelBelectedBsenseBryanBliberalBleaveB	thousandsBcommonBenergyB	religiousBrecordBoldBentireBwholeBtwitterBlistBpartiesBledBinterestBwhoseBholdBmovementBcommentBperhapsBserviceBweaponsBtedBresponseB	agreementB
understandBhoursBcarolinaBhappenedBbillionBaccessBplansBcomeyBministerB
immigrantsBohioBconservativesBwesternBsimilarBcollegeBstrategyBisn’tBseniorBrallyBheadBclaimBbringBloveBproblemsBwrongBwatchBtruthBkasichBcitizensB15BbecameBwantedBmarketBrealityBseriousBleadingBareaBlawsB5BfieldBclassBromneyBnumbersBgoldBalthoughBstageBturnedBnearBeffortsB
conferenceB“BmorningBspeakerBsixBhalfBchanceB	they’reBobamasBcongressionalBlongerBgaveBfailedBcrisisBeuropeBclimateB	reportersBstartedBlatestBstandBvoterBexpectedBtriedBcriminalBaddressB11BfinalBoilBdavidBsocietyBfrontBunionBdecadesBaheadBfearB2013B	terroristB	wikileaksB30BjebBworkedBsignBcasesBspecialBhandBreceivedB	publishedBfocusBrateBspeakingBsaturdayBstudyBbookBplayBenforcementBdidntBbeyondBactionsB
leadershipBdailyB
populationBallowBpeaceBclaimsBparisBcallsB	attentionBworkersBhappenBwe’reBimBfollowBcallingB4BmemberBchoiceBsaudiBauthoritiesBwaysBelseBdebtBsawB	terrorismBinvolvedBagencyBspendingBspentBillegalBattorneyBsingleBparticularlyBcentralBgoesBfightingB
experienceBcauseBanswerBstaffBeventsBfoodBbudgetBtermBbankB”BincreaseBwinningBneededBprotectBcrimeBrestBchairmanBorganizationBmassB
californiaBviceBsoonBheardBmindBforwardBbodyBbaseBcreateBunBshootingBmuslimBaccountBriseBshotBserverB	situationBpaidB	obamacareBcountyB	difficultB	influenceB	educationBshortBjuneBreformB	certainlyBseemBjamesBdemocratBsecretB	electoralBjulyBinsideBaskBcompanyBpoliticiansBprovideBborderBquiteBfriendsBcostBbuildingBhitB
associatedByesBfinallyBfamiliesBbroughtBalliesBremainsBshowedBletterBdeadBtheresBfireBchurchBcertainBformB	companiesBclaimedB	interestsBindependentBstudentsBrepBgetsBfrenchBbiggestBchristieBsignificantB	relationsBlivingBwifeBappearsBindeedBsourcesBlandBnotedBcreatedBdueBriskB
mainstreamB50BhigherBcarsonBbuildBtroopsBtakesBpowerfulBdoesntB	continuedBwhomBruleBaboveBabilityBknowsBconsiderB25B	describedBbidenBviewsBcutBallowedBvotedBstepBplannedB100BopportunityBexactlyBstandingBreleaseBnetworkB	campaignsBdecidedBmassiveBfallBboehnerBmuslimsBgivingB8BbattleBtotalB12B	coalitionB	challengeBtermsBjohnsonBfundingBregionBquicklyBuponBgodBsuperB	democracyBmichaelByou’reBhelpedBarmyB
oppositionBgrowthBappearedBseemedBremainBpopularBworseBpostedB
particularB	meanwhileBwon’tBtvB
terroristsBpollingBterrorBmaybeBgameB	spokesmanBloseBwBnatoBgrowingBeuropeanBdollarsBtrustBreadyBprojectBjewishBhugeBappearBdonorsBmarcoBstayBcrowdBbelowBwordBeffectBconcernsBchrisB	operationBjudgeBhandsBpassedBopinionBspeakBapproachBroomBjanuaryBindustryB
throughoutBraisedBincludeBclearlyBdirectlyB“aBaverageBauthorBageB	continuesB
consideredBshowingB	corporateBmainBaprilBreviewBpreviousBofficerBlegislationBheartBchangedBlowBtownBfigureBeightBboardBaloneBseriesB	septemberBgovernmentsBdeepB2011BagendaBimmediatelyBattemptB0BareasBpodestaBincomeBcapitalBpmBlightB	currentlyB“itBukraineBsexualBmedicalBexpectBreachBreturnBraiseBonesBknewBconstitutionBaccusedBrulingBiraqiBincludedBonlineB	lawmakersBexpertsBwillingBlackBfavorBveteransBrelatedBrememberBlooksBlaborBgoneBcitiesB	availableBprettyBkingBbelievesB
individualBchildBwinsBgayBhearBserveB26B14BspokeB
operationsBforcedBdetailsBconflictBchangesBbritishB	suggestedB	beginningBalBrecordsBpathBfeltB
classifiedBagreeB6BstoriesBratesBphoneBlargelyBtestBnoteBi’veBthinkingBmetB	dangerousBcheckBcancerBviaBprimeBnorBvirginiaB
supportingBreasonsB	primariesB	positionsBsafeBperiodBnaturalBhundredsBdistrictBcoverageBbenefitsB	authorityB“thisBtaxesBtalksBscienceBdrBwhateverBsiteB	professorB	insuranceBbitBwarsBstarBshe’sBimageBcultureB7BkillingBpushBprisonBworthB
protestersBlowerBincreasinglyBfranceBfatherBsevenBimpactBeasyBusaBdncBbeginBpressureBarmedBaddingBradioBbanksBagentsBservicesBcriticalBservedBdevelopmentBcouncilBworksBrespectBofferBsonBpassBstatusBsearchBmeetBgunsBfollowedBfellowBeasternB40BmostlyBmikeBwasn’tBpleaseBjoeBfaithB	documentsBavoidBargumentBparentsBdebatesBamountBthusBpreventBbreakBtheyreBearthBaugustB2010BmarkBamerica’sBabortionBnoneBgreaterBeliteB
completelyB18B	“it’sBvictimsBpaperBmovingBlibyaBinternetBdrugBweekendBvariousBtoughBperBlargestBballotBacceptBnatureBjoinBfraudBbreakingBassaultBalternativeB9B“ifB	resourcesBcenturyBafghanistanBmexicoBdecemberB	sometimesBracialBpresentBlanguageBfalseBdoubtBtellingB	sanctionsBreachedB	increasedBguyBcontributedBarabBwrittenBsubjectB
repeatedlyBredBbornB
ultimatelyBturkeyBminorityBfocusedB	supportedBdeclaredBrevealedBrelationshipBpriceBlinesBideasBseekingBrhetoricB28B27BviolentBneitherBmodernBwebsiteBkeptBhillary’sBhappensBcaucusBprogramsBhostB	expressedB	confirmedBannouncementBofferedBholdingB	employeesB	committedBchargesBsuccessBprotestBdcBworstB	mcconnellBdirectBcantBbecomingB
presidentsBpoorB	activistsBprovidedBminutesBisntBbidBlossBhusbandBappealBwarnedBregimeBracistBorganizationsBcrimesBwhat’sBleavingBfrontrunnerB
corruptionBclickBarabiaBanalysisBlevelsBincludesBfactsB	christianBsendBremarksB
differenceB	concernedBcomparedB13B	wisconsinBspecificBsortBprotestsBprogressiveB
previouslyBpennsylvaniaBbelievedBsupposedB	necessaryBmeasureBjournalBhighlyBdiedBtargetBindianaBdefeatBwe’veB	explainedBcoverBliesBiranianBvermontBhearingBscottBherselfBgasBbuiltBafricanB
televisionB
propagandaBpossibilityBopposedB	candidacyBdecideBcommunitiesBspaceBvaluesBpositiveBcoreBreaganBlearnedBgoalBvisitBresponsibilityBhateBcoupleB	amendmentBreligionBlet’sBissuedBcriticsB17BkidsBagreedBtraditionalBsimpleB
scientistsBfebruaryBcampBbrainBpushingBpowersBtiesBsummerBpointedB	decisionsBarmsBarguedBsaveB	criticismB911BhillBcontestBcreditB
apparentlyBsignedBinvestigatorsB	advantageBschoolsBresponsibleBfriendBadditionBvoiceB
reportedlyBplacesBdamageBpipelineBpickBnegativeBmultipleBmattersBconcernBwarrenBjoinedBdomesticBcostsBsoughtBmotherBlearnBgivesBchineseBaudienceBsouthernBindividualsB	happeningBcausedB2009BpenceBkellyBfightersBexchangeBdefendBchargeBstandardBmovedB
eventuallyBelitesBthreatsB	instituteB
discussionBpieceBfacingBconstitutionalBaffairsBpageBlosingBjournalistsBendedBarrestedBaddB	opponentsBwontBsystemsBsidesBfundBfullyB	party’sBmosulBcompleteBcaucusesBabedinB2000BstudentBranB
protectionBchargedB
additionalBpubliclyBpartisanBoutcomeBmittBmanagerB60BmichiganBfairBaskingBsamesexBoverallB	netanyahuBfiorinaBbenefitBactualBrequiredBprogressBplaneBkerryBfedBcastBagenciesBwaitBrefusedB
percentageBfailureBmeantBgreenBbillionaireBbecomesB“youB
technologyBnevadaBensureBdesignedB16BseekBlynchBlargerBit”BeveningBscandalBbuyBblameBattackedBrichBisraeliBhelpingBwarningBsuggestsB
statementsBsignsBexplainBlookedBsurveyBpromiseB
nation’sBhighestBpentagonBongoingBvastB	thereforeBshownBrefugeesBradicalBpartsB
absolutelyBwageBlaunchedB
successfulB	regardingB
investmentBdemandBchicagoBthinksBstatedBwritesBoctBleadsBgermanyBcapitolBbackedBadviserBstudiesBspendBsexBpushedBnineBlibertyBbenBsuggestBproposedBjerseyBwealthBwalkerBunlessBcoldB24B
wouldn’tBseaBimagineBfemaleBbanBreceiveBdeclinedBsocalledBrisingBrespondBpresenceBmilesBcarryBblockBtrailBputtingBjointBhellBconversationBcoalBtrainingBsanBphotoB
impossibleBeasilyBdeeplyBtrulyBshiftBrivalBobviousBmaterialBkillBcontroversialB	conductedBcarBbehaviorBwalkBseparateB
revolutionBnotesB	knowledgeBdakotaBclosedBversionBfamiliarB	effectiveBdealsBbombBvalueBsurpriseB
resolutionBdrugsBriggedBreserveBpracticeBincidentB
businessesBaidB	militantsBfiredBchooseBaren’tBaidesBpolarizationBpartysByourselfBplayingBmoralBcarriedBbrokeBaleppoB
generationB31BrockBraisingBdelegateB	civiliansB	respondedBpricesBindiaBdeniedBcashBrequireBlimitedBunderstandingBroadBreporterBmccainBessentiallyBcorruptB
christiansBargueBsurveillanceB	directionBdecadeBcubaBbloodBbenghaziB“inBzikaBvladimirBtowardsBsafetyBpossiblyBpoliticallyBperformanceBpartnersBendorsedBcontroversyBconsideringBallegedBaideBwaitingBvideosBpotentiallyBhourBgermanBfloorBericBconsequencesBplayedBplanetBmurderBhallBextremeBlinkBjimBassangeB“thereBwakeBstrikeBmoscowBmartinBcloserBwritingBsolutionBrichardBpromisedBhopesBdoorBunlikelyBtheoryBsoldiersB	obviouslyBnamedBentirelyBeffectsBcycleBcaughtBcareerBtypeBreadingBpacBmissionBinstitutionsB
discoveredBcutsBadBwatchingBsenatorsBmarketsB
electorateB	clevelandBideologicalBfirmBcontrastBbeatBnegotiationsBshesBmeasuresB	destroyedBcomplexBadvisersBswingBseeingBfundraisingBdeputyBwasntBplatformBminimumB
identifiedBeffectivelyBbasisBarizonaBstartingB	seriouslyBsceneBphysicalBdroppedBcreatingBcleanBusuallyB	territoryB	extremelyBallowingBsharedBdestroyBassociationBstronglyBstreetsBstepsBseasonBregulationsBpreparedBmagazineB
increasingBculturalBpropertyBbrotherBbirthB	treatmentBstrikesB	strategicBrequestBkeepingBholdsBdiscussBdeathsBcommunicationsBstoppedBsilverBrangeBdestructionBcoloradoBbalanceBrobertB
representsB	narrativeBenvironmentB
commissionBcombatBanthonyBweinerBrussiansBinternalBfixBfiguresBdarkBaircraftBtalkedBstoodBsorosB	reportingBrebelsBgainBfinanceBeditorB“heBwriteBturningBtargetsBetBeraBdB22B“i’mBsoundBoriginalBislamBdeBcorporationsByoureB	standardsBnobodyBnativeBmentionBfacesBcourtsBbiggerBbasicBassadBroughlyBpriorBmrsBmoderateBkentuckyBeyesBevilB	deliveredBmayorBmarginBislandBinterestingBdavisBcollapseBclaimingBciaBbush’sBangerBtotallyBliberalsBhere’sBhappyBfundsBcorrectB	representBgrayB	generallyBflagBarticlesB
activitiesBunlikeBtweetedBsuspectBsecureBralliesBpopeBinstanceBbackingB29B2007BstrengthBpullBpledgedBpayingBfellBdollarBcomputerB
airstrikesB19B•BplanningBfacedBequalBdaughterB21BvisionB	supporterBspeechesBnamesBlieBjusticesBempireBbordersBthanksB	residentsBoccurredBhistoricBenemyB	emergencyB	world’sBpictureBjewsBenvironmentalBspreadBmaintainBexceptBcountry’sBcloselyB	remainingBexposedB“andBproveBbrownBafricaBsendingBrepresentativesB	otherwiseB
journalistBhumaB
healthcareBdiseaseB	baltimoreBapprovalBactivityBwinnerB
russia’sB
relativelyBphiladelphiaBpalestinianB	offensiveBlongtimeBjB
couldn’tBbritainBannualBamidBracismBinvestigationsBhomelandBgreatestB	afternoonBzeroBproducedBproduceB
originallyBmeaningBcountBcontentB
conditionsBtrackB
parenthoodBlaunchBgrowB
colleaguesB
appearanceBstandsB	shootingsB
interviewsBendorsementB	determineBwidelyBtweetBteaBmomentumBhurtBestateBbureauBstationBshutBnorthernBministryBmachineBcausesBabuseBtravelBrunsBproposalBopeningBmodelBinfrastructureBbringingBbottomBbooksB“butBsittingBpeacefulBhonestBaccountsByemenBveteranBunfortunatelyBtonightBspecificallyBrandBrBdropBdegreeB
backgroundBscaliaBreduceBmistakeBlistenBdeclineBchangingBawareBamericasBadvanceBworryBturnsBsupplyBprintBnbcBguysBdividedB
connectionBcodeBchaosBseesBrivalsBmarylandBetcBdriveBdoctorsBboostB
ambassadorBtextBpurposeBopenedBnsaB
interestedBforgetBdateB	conditionB
challengesBblueB23BtripBstuffB	state’sBprovenB
productionBpostsBlibertarianB
conspiracyBangryB
aggressiveB
registeredBpromisesBlawyerBhospitalBheavilyB
diplomaticB	basicallyB	virtuallyB
reelectionBplusBopponentB	mentionedBhotelBwealthyBperfectBmissilesBmissileBkurdishB	donationsBconductBcharlieB
suggestingBstB	providingBmanagedBfeelingBworriedBtellsBrickB
politicianB	newspaperBjailBgapB
controlledB“theyBstoreBresearchersB	ourselvesBoffersBhispanicBfiledBcitedBbrokenBbombingBallegationsBweakBtrendBthankBordersBmachinesBhasn’tBactiveB
threatenedB
strategistB	prominentBprobeBfastBcrucialBbillsB
affordableB	advocatesB	referringBlosB
inequalityBfindingBcontextBcarterBwilliamsBurgedBticketBseatBideologyBfitBexplainsBcurrencyBasideBthomasBsovietBsmartBfolksBdrawBarkansasBadmittedBunprecedentedBukBtwiceBsmithBlimitBexpertBexpandB	everybodyB
determinedBdangerBballotsBzoneBturnoutBsettingBmessagesBmccarthyBiiBhopingBheavyBeasierBcarryingBwhitesBtroubleBprovidesBnumerousBidentityB
commitmentB	attackingBapartBtaskB
personallyBleakedBinvasionBgenderBemergedBdozensBdesireB	allegedlyBvaBusesBtrialBtargetedBsuicideBsizeBrepublicBmexicanBimproveBhousingBgottenBestablishedB	discussedBdifferencesBcanadaBattemptsBwishBturkishBtensionsB	rightwingBreturnsBretiredBolderBhuckabeeBcommandBcitizenBchannelBchairBwhatsBproofBlicenseBhomesBgoogleBandrewBactsBsomehowBsellBleavesBcontestsBconstructionB	yesterdayBwideBtomBnormalBweaponBtoneBrncBrepresentativeBmattBinsistedBfrancisBdeliverBcontactBclubBweveBregionalB
regardlessBoptionsBontoBindependentsBfavoriteBexistBenemiesB
criticizedBangelesB45BwaveButahBstruggleBrealizeBeuBdieB
conclusionBbabyBasiaBarrivedBapprovedBaimedB35BwingBsectorBrepeatedBreidBproudBoppositeB
managementBidentifyBfewerBdigitalBacknowledgedBspeaksB	socialistBproductsBnavyBmentalBlimitsBhealthyB	existenceBallowsBairportBwilliamBunableBnetBlondonBdisasterBapparentBactingB“whatBwarmingBunclearBtrainBsolarBprofessionalBofferingBnotionBfounderBfergusonBfactorB	estimatedB	assistantByoutubeBnoticeBmomentsBlegislativeBgainsBfundamentalBfineBdozenB2017BtopicBtendBreliefBignoredBembassyBservingBniceBmyselfBlegacyBintendedB	concludedBcolorB
bipartisanBupdateBtimBmerelyBgeorgiaBfilmB	defendingB2006B2004BviewedBtableBroundBremainedB	recognizeBmsBmanafortBladyBhotBdoubleBadviceBvietnamBvanB	they’veBsomebodyBsickBoptionBopposeBopenlyBnotingB
legitimateBimagesB
historicalBfindsBenterB	confidentBtrillionBsupportsBronaldBreturnedBrequiresBreadersB
principlesBplentyBlawyersBjudicialBiveBdocumentBcooperationBchecksBbrothersBbeliefBusualBtreatedBsuspectsBseatsBpeterB
people’sBmateBharderBflightB
charlestonBbehalfBallianceBwoundedBstrongerBreplaceBremoveB
officiallyBkennedyBjonesBheadsBextentB	elsewhereBuniqueBsharesBquickBquarterBplacedBnovBforumBenglishBcnnsBcatholicBsmallerBsignificantlyBscaleBpresident’sBlinkedBlawsuitBlatinoB
importanceBgrandBeyeBenteredBdescribeB	characterBbroadBadsBwriterBtacticsBsessionBlivedBjudgmentBinvestigatingBinjuredBindianBexerciseBbiasBwonderBwearingBregularBreferredBplantsB	people”BohBinterventionBfourthBcapableBbankingBsuddenlyBrobertsBpresumptiveB	predictedBhumanityBguardBfactorsBexistingBethnicB	developedBcircumstancesBbegunBwatchedBreutersBpartnershipBguessBexperiencedBdreamBdealingBbroaderBbrandBacceptedBthoughtsBsoldB	initiallyBfiscalBdrivingBafghanBaddsBterribleBtensBstockBruledBqaedaB	proposalsB	organizedBopinionsBmissB
minoritiesBmeetingsBjuryBillinoisBhe’dB	haven’tBgingrichBengagedB	emissionsBcoveredBarrestB70BunusualBtppBrejectedBprepareBpointingBmassachusettsBhonorBgrewBequalityB	dismissedBdeadlyBcoupBafraidBachieveBsummitBreactionBopportunitiesBletsBjudgesB	integrityBengageB
confidenceBchancesBbrexitBbeginsBanybodyBactivistBwouldntBuniverseB
scientificBrestrictionsB	regularlyBphotosBorderedBlotsBirsBinvolvementB	inflationB	immediateBendsBdrivenBcharlesBcampaigningBblacksBbeliefsBarguingBstraightBsplitBslowBshortlyBremovedBlicensesBjapanBevangelicalBearnestBcitingBstruckBshapeB
resistanceBpakistanBnixonBnetworksB	involvingBcuttingB	convincedBceoBancientB	targetingB	practicesBpovertyBpeoplesBmooreBiransBinformedBignoreB	expansionB	districtsB
developingBbBanswersBaffordB2001B200B“noBunityBundocumentedBtreatyBthreateningBstyleBsomewhatBsitesB
questionedBperspectiveBmovesBguiltyBenormousBdenyBchoseBsurroundingBlongtermB	criminalsB	commanderBcellB
assistanceBallyBstupidBpulledBgrahamBgirlBbusinessmanBblamedBanalystBunionsB	today’sBslightlyBscenarioBrapeBplantBmarriedBkoreaBkaineB	immigrantBgoalsBethicsBcapturedBanywayB“whenBsectionBrelevantBmoreoverBi’llBfearsBexitBendorseBdemandsBcombinedB	attemptedBarabsByouthB	ukrainianBthrowB	structureB	referenceBputsBmapBknowingBembraceBattendedBultimateBtreasuryBsellingB
prioritiesB	literallyBillBgrownB
everywhereB	encourageBdivideB
continuingBchosenBaffectBwagesBtenBsurelyBroseBprospectBpopulistBnecessarilyBgaryB1990sB
vulnerableB	typicallyBthem”B	scheduledBpatientsBpassingBoverwhelmingBmitchBmindsB
initiativeBinitialBfoughtBerrorBelectBdivisionBcongressmanBclosingBappealsBaccusationsB	violationB	sufferingBspiritBrevealBprosecutorsBpoliticoBmissingBlegallyBhumanitarianBheadquartersBgrantedBdinnerB	desperateBcoastB	argumentsB90B2003BvetoBtalibanBspringBrisksBrevealsBreformsBpanelBoutletsBmarkedBlyingBjulianBintentB	governorsBexplanationBedgeBdiscriminationBcontainBcivilianBbriefBblowBarentB	antitrumpBaliveBwelcomeBsunBspokeswomanBqualityBpunditsB
protectingB	preparingBkindsBisilBfuelB
employmentB
collectionBboyB80B2005BoregonBmaleBjrBharmBfreshBfailingB	exchangesBdeserveBcouplesBcomprehensiveBassetsB
“we’reByoungerBvsBsuperdelegatesBsufferedBracesBeBdiscussionsB
definitelyBdefendedBcubanB
compromiseB	bloombergBanywhereB500Byou’veBwe’llB	subsidiesBsteveBsitBquoBoddsBlaidBjoshBgatheredBdrawnBcommitBabroadBwebBsunniBstanceBprojectsBphraseB
permissionB
introducedBexpectationsBescapeBearnedBdonorB	comey’sBchoicesBcardB1000BvBpromoteBlesleyBheresBfeetBextraordinaryBcreationB	consensusBblogBbarBtenureB	surprisedBspotBrareBprovedBnearbyBlikesBkevinBexpressBendingB
consistentBcompetitionBvowedBthat”BschultzB
reputationBmemoBi’dBinvestigateBhasntBfeelsBcomplicatedBcarbonBbringsBapB
widespreadBshutdownBproductBnewlyBmigrantsBmiamiBfilledBfakeBenteringB	economicsBdepartmentsBcruz’sBcrashB	conflictsB
collectiveBchamberBassumeB	traditionBteachersBstahlB
retirementB	personnelBpatriotBlosesBkimBgulfBfindingsBexamplesBconfirmBcapacityBartBarguesBanalystsBtypesBtoolB	suspectedBsurviveBstaffersBspanishBseizedB	seeminglyBsalesB	operatingBmathBhardlyB
frequentlyB	followersBdrewBdirectedBdevelopBcolumnBamazingBadmitB	wassermanBunknownBunemploymentB
understoodB
prosecutorBpenaltyBmissouriBmatchB	emotionalBdegreesBdeeperBcameraB
agreementsBadultsBusledBshipB	principleBownersBmillennialsBjeffB	gatheringBfamousBfailBelementsBanxietyBalabamaBtransferBtoxicBtestsBstoneBruralBrefuseBobtainedB	observersBinvestigativeBintenseBheadedBgiantBdutyBdraftBbombsBanymoreBamountsB1992BtoolsBrefugeeB	prisonersB	presentedBparticipateB
parliamentBofficesBmemoryBmedicareB	marijuanaBlorettaBkeepsB
industrialB	indicatedBgoreBgirlsBfeaturedBexactBegyptianB	editorialBdisagreeBconventionalBchallengingBcbsB
capitalismBbrianB“asBwitnessBsoundsBquoteB	protectedBorganicBnomineesBmichelleBlearningB	illegallyBgoldmanBformsB	extremistB	establishB	elizabethB
destroyingB
country”B	containedB	connectedBbostonBbodiesBbobBappropriateB	addressedBBratingsBquestioningB	movementsB	jerusalemBinnocentBhandlingB
challengedBbeingsBwalkedBusersBurbanBtouchBstolenBsquareBsolveBrefusingB
reasonableBreachingBpressedBpreferB	palestineBjokeBjasonBheadingBgenBfileBcarlyBcanadianBapplyB
transitionBshockBrussiasBrecallBpriorityBpalestiniansBovalBiran’sBhumansBhelpsBhatredB	customersBcrossBcontributionsBcarsBattendBagentB
strugglingBsolidBsadB	primarilyBpledgeB
journalismBinstitutionBhe’llBfocusingBfifthBfairlyB	expensiveBexistsBconceptB
attemptingBwarrantB	undermineB	solutionsBscandalsBreflectB
recognizedBpraisedBmandateB	intentionBcitizenshipBafricanamericanB2002B“toB  Bwho’sBsignalBsentenceBrejectBpickedBpainB
nominatingBenglandBcounterBbattlegroundB300BzionistB
volunteersBvisitedB
thirdpartyBtehranB
surprisingB	subscribeB
statisticsBstartsBskillsBrepliedBparkBoverseasBorlandoBomalleyBmannerBinvitedBidBhostileB
fundraiserBdojBdiverseBdetailB
definitionBconvinceBacknowledgeBvictimBvehicleBvegasBunitsBsharpBseptBmovieBhousesB
facilitiesBequallyBdevastatingBconnectionsB43BweatherBvehiclesBrepealBratingBrapidlyBperryBopposingB	nonprofitBlayBintellectualB	increasesBhandfulBglobeBextendedBdeployedBconsistentlyBbillionsBadministrationsBwelfareBrevelationsBrescueBraisesBpursueB	promotingB
nationwideBiceBfinishBfillBcrowdsBchemicalBbuyingByear’sBupcomingBtiedBshadowBroofB	receivingBprofitBpartnerBmegynBexpandedBemployeeBdeficitBdanBcopsB	consumersBbearBbackersBadvancedBactivelyBvarietyB	universalBtreatBshallBriverBplotBplayersBobjectBnarrowBmedicineB	investorsBinterviewedBfateBdogBdatabaseBcountrysBcontraryBcomfortableBboxBadoptedBweightBvoicesBtrump”BtrainedBsurfaceBmillerBhiredBheatBhandleB	guaranteeBfollowsBflyingB	essentialB	convictedBbadlyBannounceBwindBsteadyB	recessionBreadsBovercomeBmilitantBmailBlovedBlocatedBjesusB
inevitableB	incidentsBfoundingBfootageB
electronicB	demandingBcrazyBcouldntB	contestedBcompetitiveBcableB	testimonyBskinBshouldn’tBselectBsacredBpatternB
nationallyBlasBhopedB	hollywoodBfunctionBfeesBfansBextendBeatingBdetailedBconversationsBadministration’sBversusBtiredBstuckBsachsBrepresentedB
referendumBrecognitionBplanesBpanicBmonetaryBhebdoBgiulianiBfundedBfriendlyB
commentaryBcentersBbabiesBatlanticBasianBadvertisementBsuitBsharingBscrutinyBsBrollBprivacyBownedBoutrageBmountBmarksBjordanBjacksonBinnerB	headlinesBenjoyBdirtyBdefinedBcounselBcontractB10000BwisdomBwalkingBstrikingBspokenBshockingBselfB	rubio’sB
remarkableBoughtBhostedBhideBheritageB	halloweenB	frameworkBfoodsBdevicesBcabinetBbrusselsB“thatB	weren’tB	victoriesBshotsBrequestsB	preciselyBmanufacturingBfallenBegyptBbunchB	alongsideBtinyB	they’llBtaughtBresultedB
phenomenonBhackedBfiringBfighterBendlessBdoctorB
disclosureBcircleBcharityBbranchBbarelyB1980B“forBthousandB	technicalBsucceedBsevereBrevenueB	promisingBoutrightB	oligarchyBneighborhoodBlocationB	inspectorBindependenceBhistoricallyBguardianBfrustrationBfBexclusivelyBdrawingBdisputeBcruzsBcredibilityB
complaintsBcBasksBwillingnessBurgingB
tremendousBtheyveBsurvivalBspeciesBsorryBprofitsBordinaryB	nominatedBmoonBmereB	louisianaBkansasBislamistBinsidersBinfluentialBharryBfirearmsBfeelingsBfbi’sBfacilityB
extremistsBextraB	equipmentBdistanceBbasesB B	strongestBstrangeBstickB	similarlyBregardB
incrediblyBhundredBhackingBfranklyBformallyBforcingBevangelicalsBdrinkingBdonateB
discussingBconfirmationB	columnistB	australiaBaffectedB1999B“that’sBworkerBtrafficBtapeBsurgeBsteinB
settlementBronBquotedBmsnbcBminuteBloansBfunBfallingB	dominatedBdhsBdesBdeportationBdeclareBconstantBclosestBbushsB
announcingBvitaminBreverseBrelativeBrelationshipsBperformBpaymentsB
operativesBlouisB	listeningBlatinB	eliminateBdelayBcrewB
contendersB
constantlyBchartB	broadcastBbetBabcBwildBtradingBstealBstarsBstakeBsoldierBsoftwareBservesBsatBridBrestoreBrealizedBpiecesBpewB	perceivedBoklahomaBmonitorBmineBlinksBlatterBlakeBjosephBhenryBgrantB	estimatesBdramaticBcoveringBcontrolsBconsciousnessBconnectBbrooklynBaccurateBabsoluteB32B“sheBupsetBtestingBspinBrecoveryBpurposesBpicturesBpaceB
organizingBinsiderBimposeBhostagesBhatchBgoodsBgenerationsB
frustratedBfordB	exclusiveB
encouragedBeligibleBdemographicBdefeatedB	beautifulBbeatingBanimalsBamyB
addressingB“myBweeklyBthrownBstakesBslowlyBsilenceBproperBplaysB	permanentBminingBleagueBitsBgovernment’sB
enthusiasmBdeviceBceremonyB
assessmentBandersonB	aftermathB1980sBvillageBtrendsBthemeB	struggledB	sensitiveBsecretsB	scientistBscaredBreducedBrecordedBrarelyBprovinceBprizeBpacificBmasterBlaptopBkingdomBindicateBharvardBfleeingBemergeBearnBdependsBcountedBcolumbiaBcellsBarmBapproximatelyByou’llBworldsBvitalBvirusBstunningBsetsBrouteBpoolB	perfectlyBownerBoutsiderBnavalB
moderatorsBmethodB	hispanicsBhandedB	employersBdoorsBdogsB	describesBcausingBcarefulBawardBaimB
aggressionB	worldwideBus”B	temporaryB	taxpayersBstephenB	skepticalBscheduleBrepresentingBregionsBpurchaseB
provisionsBpresident”BnoflyBjoiningBhollandeBhedB	diplomacyB	declaringBaudioBaccountableBabsenceB34B	women’sBwindowBsanders’sBrootBreducingBnegotiatingBmexicansBmelaniaBliedBlaBkhanBheadlineBgainedBfinishedBdroneB	diversityBcommunicationBchoosingBbrazilBblockedB
bernardinoBbbcBbannedB47BuglyBsmokeBshiftedBrushBpullingBpromptedBpollsterBmusicBmeatBmassacreB	manhattanBmanageBloyalBhittingBheroBhearingsB
explainingBdisplayBdesignBcourageB	condemnedB	appointedB8thBunderstandsBswitchBstressedBrelyB
regulationBobservedBmurderedBmissedBlincolnBlettingB
grassrootsBgangBfrankB	franciscoBformedBfootballBemergingBdemonstratedBdamagedBcredibleBbubbleBboughtBauthorsBansweredBachievedBaccusingB55ByeahBupdatedB	twothirdsBtragedyBsufferBshipsBsecondsBscenesBranksB	prospectsBprogressivesBpresidentelectBpatrickBpassageBmogulBieBhaventBgdpBforthB	expandingBentryBentitledB	dedicatedBcornerBconfrontationB
committeesBaffairBacademicB33B“there’sB“notBwhoeverBusefulBseanBsarahBrepeatBpersonalityBoverwhelminglyB	motivatedBmobileBme”BlgbtB	judiciaryBjapaneseBitemsB
indigenousBharrisBgroundsBeatBdietB
commercialBchampionBchainB	celebrityBcampsB	buildingsBbrutalBbreaksBbibleBbasharBbacklashB	anonymousB	abandonedBwilsonBtipBseeksBresolveBremindedBpuertoBpraiseBparticipantsBmessB	materialsBinspiredBgarlandBdaeshBchurchesBcamerasBbossBbeachBassetB
america”BadvocacyBaccountabilityB100000B“ourBwinterBwallaceBuraniumBunrestBuniteBtowerBsweepingBsantorumBraqqaBramadiB
preventingBnewtBminorBlogicBjetBitalyBhowardB	governingBfirmsBexposureB
equivalentB
comparisonBcampaign’sB	attorneysB	anonymityBagesB75BunitBsuppliesBstressB	stabilityBspeculationBshockedBsavedBrodhamB
restaurantB
respondingBrenewedBrebelB
popularityBokBmoinesBmixB	minnesotaBmethodsBmedicaidBmagicBinvolvesBhopefulBgonnaBfoundedBfieldsB	evolutionBdoubtsB	christmasBbankersBattB44B“isB	“he’sBwolfBvillagesBsubstantialBstevensB	spotlightBsessionsB	sentimentBsavingsB	responsesBregisterBprofileBposeB	polarizedBpelosiB	oversightBoperateBmorrisBinsultsB	indicatesBholderBguideB	explosionBepaBemptyBedwardBdreamsBdramaticallyBcivilizationB	celebrateB
atmosphereBalqaedaB©BviewersBtitleB	threatensBreplacedBpublishBpaymentBpacsBnoticedBmarineB	mandatoryBlistedB	launchingBfeedBfanBedB
economistsBcounterterrorismBconsiderationBconsentBchuckBboundBbesidesB54B42B1970sBvisibleBtypicalBtriesBtitledBtB	substanceBscoresB
romney’sBriotB	releasingB	qualifiedB	provisionB	privatelyB	overthrowBneverthelessBmillsBmaintainingBmainlyBjustifyBjourneyBformalBemphasisBdivisiveB	decliningBdeadlineB	confusionBconfrontBchristBcampusBbulkBbizarreBadamB46BwhosB	unpopularBtransgenderBtomorrowBtemperamentB
surroundedBsuccessfullyBstayingBrevoltB
revelationB
punishmentBpriebusBpremiumsBposedBphaseBone”B
newsletterB	naturallyBmistakesBmassesBmaineBlossesBimplicationsBhealingB
executivesBexcuseBeveBeagerBdocumentaryBdnaBdemandedBconsumerBcollectBceilingBcardsBappliedB	apologizeBandorB1991BtweetsBtraveledBscoreBschemeBrecalledB	neighborsBlatinosBinquiryBhostageBholeBhiddenBfranklinBfailsBdeclarationB	communistBcaptureBalexBalaskaBadvocateBviolatedBviolateBsueBspeedBsiegeBpureBprosecutionB	moderatorBmilkBleeB
impressionBhighlightedBfeatureB	extensiveBeducatedBconwayBcalmBboldBbinBagain”B38Byou”B
violationsBup”BtransparencyBthey’dBteacherB	sovereignBskyBsilentBshameBriotsBreservesB	reopeningB
publishingBportionB	objectiveB	locationsB	lobbyistsBkillingsBjillBimportantlyB
huffingtonBforeverBelderlyB	discoveryBdenyingB
deliveringBdamagingBcustodyBcreatesB	court’sB	carefullyB	attitudesBasylumBadmitsB“anBwearBwarfareBtightBtankB	suspendedB
subsequentB	states”BspainBsoulB	somewhereBselectedB	practicalBpostingBoddBmateenBloanBlessonBleaksBinsistBhim”BhackersBgunmanBengagingBdemonstrateBdeletedB	completedBcombinationBbaghdadBauthorizationBassuredBaspectsBarrestsBapproveB“soBwalshBtranspacificBsolelyBsharplyBreflectsBqatarBpsychologicalBprayerBpitchBpagesB	operativeBmurphyBmoodBlegislatureBhairBfledBfaultBfallsBeventualB
depressionBcreativeB
complainedBcatchBbusBbillionairesBavoidedB
weiner’sBvalleyBunacceptableBthreatenBstayedBquotesBquitBquietlyBprayBparticipationB
occupationB
maintainedBlewandowskiBlethalBjonBjayBinjuriesB
incredibleBholidayBfootBfebBfathersB
emphasizedBdeliberatelyB
concerningBburnBautomaticallyBappearancesBalertB49B‘theB	witnessesBtestedBstumpBshopBshootBsampleBrootsBregistrationBpursuitBpoisedBlongstandingBlandsBissuingBimposedBhwB	householdBhorribleBhitsBgamesB	exceptionBentityB	economistBdecidesBcriticizingB
consultantB
appreciateB51B48B	“peopleBweek’sBunderwayBtownsBtortureBtieBthrowingB	tennesseeBsymbolBsubmitBstormBsteppedBrequirementsBreopenedB	reluctantB
optimisticBokayBnancyBinvestigatedBinteriorBimperialB
helicopterBgop’sB	globalistBexpectsBepisodeBencouragingBeditorsBdukeBdefenceBdeemedB	breitbartBbitterBbelgianB
authorizedBassassinationB36B21stB1996B1968BworkingclassBwarnBtopicsBtonyBtensionB	telephoneBtechBstatingBstandoffBsortsBsignalsBsecretlyBsaleB	revealingBremindBpromotedB
perceptionBmothersBlockedBleverageBkickedBignorantBhookBhighprofileBgenocideBflyBdesperatelyBcrookedBcountsB	countlessB	competingBcarrierBburdenBbridgeBbenjaminB	believingBatomicB	associateB
acceptableB99B37Bworld”Bwashington’sBvaccineBtimingBtime”BtanksBsurveysB	spiritualBspectrumBrifleB	resultingBpopulationsBpactBone’sBoccurBnominateB
newspapersB	negotiateB
indicationBhiringBfurthermoreBfunnyBfeaturesBfatB	extensionB	economiesBdifferentlyB
describingBclearedBclassesBchristianityB65B39BwheneverBunifiedBtheoriesB
suspiciousB	successorBshedBroyalB	returningBresignationBreplyBrefusesBproperlyB	privilegeB	preferredBportBnowhereBnightsBnaziBmixedBlindseyBlightsBliftBjumpBjonathanBjetsBjanBhorrorBholyBgunmenB
guidelinesBgreatlyBgatherBflowBfascistBdonatedB
deploymentBcorrespondentBconservatismBbondB
ammunitionB	addressesBabdullahB95B56B“trumpBveritasB
unexpectedBtuesdaysBsustainableBsovereigntyB	socialismBsightBriceBresignedBrefusalB	recommendBpaintB
obligationBmatthewBinvestB	implementBfuriousB
enterpriseBelectricityBdynamicBdisappointedBcooperBcontainsBconsequenceBcompeteBcircuitBburnedBbrieflyBbondsBbigotryBadvisorBadvertisingB5000B	troublingBtearBsurprisinglyB	succeededBsleepBsettledB	selectionBrtBrapidBpursuingBpublicationB
proceduresBpolicingBplayerBpenBpalinBoathBlowestBlifetimeB	landslideB	hopefullyBguestBgenuineBflatBfiresBdecidingBcoolBconventionsBconsiderableB
conscienceBcompareBclassicBbusyB	bombshellBblocBattractBapplauseB	apartmentBanimalB“oneBwithdrawBweaknessBwarningsBvpBvisitsBtemporarilyBspeakersB
sanders’BrowBrideBresistBresignBquietBprovesB
possessionBpackB	overnightBorganizeBoceanBobtainBneighborhoodsBmysteryBloudBlikedB	libertiesBlegislatorsBidealBhitlerBgainingBfrequentBfightsB
expressingB
explicitlyBeuroBdriverBdiscloseBdangersBcourtesyBcommerceBbrazileBbeatenBarriveB	appearingBalassadB58B41B1990B»BupperBtriggerBsweatBsuddenB
strategiesBstoppingBromneysB	requiringB
protectorsBprofoundBpredictBpolandBphilippinesBmerkelBlobbyingB
legitimacyBleftwingBleBjackBiraniansBinvestedBhannityB	generatedB
federationBdroppingBdetainedBdefineBdearBcountingBcopyBcommissionerB
commandersBcastingBbloodyB	attackersBassumingBarcticBamnestyBaliensBadditionallyB“veryBweldB	watergateBwasteBviableBtrackingBtougherBsusanBstretchB	statewideB	sponsoredBsoilBshiiteBsheriffB	searchingB	routinelyBregretBraidBpickingBpatrolBpairBmediterraneanBlesserBkurdsBkochB	jihadistsBjihadistB	insistingB
indictmentBgiftBflagsBfearedB	favorableBfashionB
expressionB	explosiveB
disturbingB	departureB	considersBconnecticutBcirclesBbriefingBassemblyBactedB	acceptingBabsurdBabandonB52B2020B1997BunfairB	travelingBtodaysB	thresholdBteamsBsubjectsBshouldntBshooterB	reductionBrawBqueenBpilgerBoutcomesBopedBnyBneutralBnastyBmodestBmeasuredB	maintainsBlovesBlessonsBinterferenceBhostsBharshBgovernBfavorsBfavoredB	divisionsBdistributionBdetroitBcrisesBbeastB	awarenessBattitudeBantoninBalienB›B“onB
“hillaryBweirdBufoBtribalBtollBstationsBsportsBshiftingBrumorsBroutineB	rooseveltBriggingBremovalB
prosperityB	producingBpresentsBpharmaceuticalB	performedBoccupyBnonethelessBmountainBlockBlistsBlettersBlayingBkBhorseB
globalistsBfamouslyB	excellentBdeterminationBdepartment’sBdebbieBdadB
convictionB	contenderB
confrontedBcommitmentsB	catholicsBburningBbrightBassumedBanniversaryB
allegianceBafricanamericansBadoptB
acceptanceB	abortionsB1998B“howB	witnessedBviralBtyrannyBtempleBsweptB
supposedlyBshellBscreenBpastorBparticipatingBnow”BnotablyBnervousBnationalismB
misleadingBmBjenniferBinterpretationBimpeachmentBhomelessBgearBfosterB
engagementBdo”BdonationBdevelopmentsBcustomerBcoordinatedB
conductingBcnbcBclipBclerkB	china’sB	chemicalsB	centuriesBcentreBaggressivelyBaccomplishedB53B
wrongdoingBwantingBvisitingButterlyBteachBstate”BstableBspyBspokespersonBrollingBprofessionalsBprinceBpressingBpapersBoutreachBneighboringBmcmullinBmaryB	marketingBlobbyBliftedBlibertariansBlengthBkirbyBkillerBkeystoneB
intentionsB	improvingBignoringBhackBflipBfallonBexposingBexperiencesBentertainmentBendorsementsBdismantlingB	dependentBcontributorBcontributionBconcertBcheapBblastBawardedBauthoritarianBappointB1994BwatersB	violatingB
underlyingBtheftBtendsBswornBsubstantiveBstringB	sentencesBsecularB	satisfiedBroundsB	requestedBprotectionsB
preferenceBplainBpersuadeBpassionBpackedB	nightmareBmomBmiracleBmarginsBlordBladenBkoreanBjindalBisolatedB	inabilityBimprovedBgowdyBgatesBfierceB	extremismBembarrassingBelection”BelectingBdominateBdoctrineBdialogueBdemsBdanielBcorpsB
consultingBconclusionsB	computersBcaresBassessBarenaB	appealingB61B“allBtruckBtourB	strugglesBstopsBsloganBsinglepayerBscopeBsadlyBreplacementBreminderBrecommendedBrationalBradarBpuppetB	preventedBposesB
philosophyBmutualBmidnightBmaximumBmastersBmadBislandsBinvestmentsBinsultBindexBfundamentallyBfortBflintBexposeBestimateBdignityBdemonstratorsB	defensiveB	daughtersBcontractorsB	breakdownBblindBblastedB	batteriesBbathroomB
amendmentsBalliedB1948BwritersB	wonderfulBwar”BunfavorableBunconstitutionalBuncomfortableBtuesday’sBtrunewsBtraditionallyBsyriansBsitsB	shorttermBsaudisB	satelliteBreservedBrenoB
protestingBoutputB
monitoringBmiddleclassBmedianB
meaningfulBlooseBlarryBjumpedBjimmyBinitiativesB	hospitalsBhorrificBhamiltonBgrossBgopsB	forgottenBfarookBexcitedBequityBdroveBdominantB	contactedB
committingBchapterBcalendarBbiasedB	assertionBarguablyB64B1960sB“theseB‘iB	volunteerBviciousBtrustedBtribeBtransportationBthrewB	syria’sBsurvivedB
sufficientBstudiedBstrategistsB
situationsBseizeB
ridiculousBreliableBregulateBreferBquantumBpocketB	plausibleBphoenixBpersianBoutragedBnotableBmouthBmodelsBmigrantBmanagingB	magazinesBlawsuitsBhusseinBhireB
hemisphereBhelmetsBgreekBgreeceBgenerateBfarmersBexpenseBeaseB	dominanceBdestructiveBdeskBcrimeaBcommentatorBchaffetzB
casualtiesBbandB	ballisticBaustinBaspectBannB	airstrikeBadultB“atB	wonderingBverdictBvaticanBvaluableB	toleranceBtaxpayerBtapperBswiftBsecuringBscholarsBsandyBsaddamB
regulatoryB	recoveredBraidsB	protesterB	precedentBpartlyBneoconsBlengthyBkremlinBinsistsBhidingBheatedBhaltBgrabBglassBfoundationsBescapedB	dishonestB	detentionBcredentialsB
contributeBcompetitorsB	change”B
campaignedBbayBbattlesBballBbagBassistBappleBapologyB	ambitiousB	ambitionsB
altogetherB2018B150BwavesBupdatesBtreatingBthis”BtearsBsurfacedBsullivanBrogerBrevolutionaryBrepresentationB	recordingBrapistsB	providersBpreserveBphonesBopposesBobjectsB
nonviolentBmookBmockedBmilitiaBmetalBloyaltyBisraelisBinstitutionalBhere”BguestsBgraduateBgraceBgallupBfascismBexplicitBexpensesBenforceB	encounterBembracedBemanuelBdyingBdoubledB
disastrousBdeportB
convincingB
complianceB	collusionBchannelsBcdcBcastroBbenchBadministrativeB400B20thB1237B
“we’veByouveBunpredictableBunarmedB	transportBthere”BteachingBsymptomsBsparkedBslaveryB	signatureBshakeBrubiosBringB	reviewingBrelyingBreleasesBreceivesBrageB	purchasedBprovingBprideBpretendBphysicsBpatientBoutlookBnaftaB
misconductBlibyanBleakBlaughB
israel’sBintendsBinjuryBiiiB	historianBhedgeBheartsBfueledBfortuneBenthusiasticBelBdiscoverB	dependingBdenialBdecisiveBcryB	criticizeB	correctlyBcontentiousBanchorBactorsB
accomplishB	wellknownBundoubtedlyBunauthorizedBtribuneBtoddB	sustainedBsoonerBsonsB	societiesBsiouxB	sacrificeB
relentlessBproBplacingBpackageBoccupiedBnormallyBnobelBneurosurgeonBmountingBmississippiBmilitiasBmeetsBlutherBlesbianBkidBinformBgolfBexcitingBeverydayBemployedBemotionsBeducationalB
earthquakeBdiseasesBdisappearedBdependBdallasB
containingB	collectedBchelseaBcandidate’sBbreathBbirthdayB	attractedBalternativesB	alexanderBaisleBaimsBwiseBwallsB	venezuelaBuserBtragicB	supremacyB
strengthenBstocksBspiteBsigningBsignificanceBsexuallyB	scenariosBrobustBresidentBprophetB	projectedBpendingBpartialB	outsidersB
outrageousBopensB
mysteriousBmuseumBmonthlyBmirrorB	landscapeBkickBinvolveBimplementedBhonestlyBhighwayB	highlightBhawaiiBgregB	graduallyBgovernmentalB
governanceBfingerBenjoyedBenactedBdisabledBdemographicsBdebrisBcrudeBcrossedBcontrollingBconfusedBchiefsBcheckedBbeijingBbarsB	automaticBairspaceBadmiralBacademyBvaccinesB
undercoverBtrendingBtendencyBtacticalBswedenB
suggestionB	submittedB	spreadingBsoleBsixthBshieldBscareBsakeBroughBroadsBreviewedBretreatB
researcherBrangingB	radiationB
propertiesB	processesBpracticallyBpeakBpatternsBpBout”BonetimeBmotiveBmonicaBmohammedBknockBinvestorBinfamousBhusband’sBhuntBforecastBfarmBdissentBdenmarkBcupBcrackBcountiesBcopBconsumptionB	colleagueBclashesBbraveBbombingsBawkwardB
assumptionB
approachedBzonesByears”BwiderBwebsitesB	undecidedBtreeBterryBstarkBsanderssBraciallyBpredictionsBpatakiB
passionateBparliamentaryBorangeBnprB	notoriousBmosqueBmemorialBlacksBkenyaB	instancesB	ignoranceB	hostilityBhopefulsBhillarysBhenceB
greenhouseBfirmlyB	financingBfailuresBextraterrestrialBexploitBelectricBdougBdiplomatBdefaultBdaveB	copyrightBcondemnBconcreteBcity’sBcentristBcarriesBcampaign”BburiedB	brookingsBblockingBblamingB
biologicalBbedBawfulBarrangementBadvisedBabusesB1988BwerentBthinBtheyllBtagsBswitchedBsuperiorB
structuralBsisterBshowdownBshoutingBsegmentBsecBsaferBrobBrespondentsB	rejectionBregimesB
physicallyB
passengersBparentBoB	northeastB
negotiatedBneckB	mountainsBmidtermBlibraryBlackingBkouachiBkievB	incumbentB
impressiveB
highlightsBhashtagB
guaranteedBgrabbedBgeneralsBgBfreelyBfactionsBexecutedBerdoganBebolaBdrillBdisruptBdecentBculturesBcontributingBcompoundBcomplyB
compellingBclientsB	childhoodBbeautyB
bankruptcyBbalticBalanB	affiliateB67BwinnersBwebbBuniversitiesBuncertaintyBtransparentBstoresBstickingBspotsBsnowdenBsensBsavingBrushedBrkyBrequirementBrapedBproposesBproceedingsBpetitionBpersonsB	outspokenBoriginBorientationBoperatedB	occasionsBnorwayBmuhammadBliftingBleftistBironBintimidationB
industriesBincBhoustonBgoldenBfocusesBfedsBfasterB	excessiveBembargoBduckBdossBdistantBdeniesB	cooperateBcookB	consciousBcomfortBbonusesB	attendingBappointmentsBappointmentBalterBaccompaniedByoullBwoundBworriesBwonderedBwildlifeBtherebyBthemesB	testifiedBsuspendBsundaysB
solidarityBsmokingBslateBsettleBseattleBresortBremovingB	relativesBrefugeB	reflectedBreactB	pollutionBpivotBpilotBpaysBnonsenseB	migrationB
majoritiesB	liabilityB	kuznetsovBitalianB
ironicallyBintendB	injusticeB
inevitablyBincarcerationBimmuneBhealBhBguardsBgeopoliticalBflawedBflaBfilesBexistedBevidentBelementBechoedBdrinkBdressedBdowntownB	diplomatsBdickBdevotedBdeservesBdefectsBdanaBcruiseBcreamerBcontemptBconcludeB	complaintBclashB	ceasefireBbundyBbroadlyBblewBavoidingBauditB
approachesBalikeBafpBaccuseBaccidentBweaverBway”BwaitedBundergroundB	uncoveredBtoutedBtogether”BtodoBterritoriesBtacticB
surrogatesBsubsequentlyBstudyingBstreamBstorageBsoftBshitBscBriflesBresolvedB	realisticB
reagan’sBrandomBpublicationsB	promptingBproducerBproceedBpotusBpilotsBpainfulBpaBoldestBoccasionBnonpartisanBmanufacturersBmanipulationB	lifestyleBlastingBlabeledBlB	instagramBinfowarsBharmfulBhandledBguidanceBgrantsB	globalismBdisputesB	denouncedBdatingBcyberBcoversB	collapsedBcapabilitiesBcanceledBbulletsBbaseballBbanningBautoB	attendeesB	assaultedBaliB
advantagesB	admittingB270BwithdrewBwhereasBvocalBtreasonBtheaterBthatsB
techniquesBswayBsuedBstevenBshoutedBshiftsBschumerBscaryBryan’sBrossB	respectedBresourceBremindsB
remarkablyBpunishedB	processedB	permittedB	patrioticBownsB	ownershipB	oligarchsBneoconBmitchellB	ministersB
membershipB	marriagesBloneBlebanonBjakeBinherentB?httpwwwinfowarsstorecomhealthandwellnessinfowarslifebrainforcehtmlimstzrwuutmcampaigninfowarsplacementutmsourceinfowarscomutmmediumwidgetutmcontentbrainforceBhawksBhadn’tBgraveB
explosivesBemailedBdramaB
disciplineBdictatorBdescriptionBcriticBcontroversiesBchaoticBcensusBbeltBaugBantiestablishmentBalignedBalcoholBalarmBagreesBagreeingBabsentB68BweighBurgeB
translatedB
thoroughlyBtakeoverBsuburbanBstrictBstewartBsophisticatedBshippingBsheepleBsecuredBrolesB	repeatingBprisonerB
pretendingBpotBpossibilitiesB	portrayedB	peninsulaBpauseBpassesBoffendedBobserverBnhBnegotiatorsBnasaBmythBltBjerryBintelligentB	insultingB
influencedBimplementationBheyBfreedomsBfleetBexposesB
experimentBethiopiaBestablishingBdumpBdonBcritiqueBcostlyB	cleansingBchildren’sBcherylBcatastrophicBcapsBcalifBbuildupBboysBbombersBbelongBbacksBassertedB
accountingB	“i’veB
“becauseBBwelcomedBurgentB	unwillingBtwinBtuneB	transformBtotalitarianBstadiumBsignaledBsheerBsendsBretailBrestrictBrespectivelyBrelationBrankB
prosecutedBpregnantBoutlinedB	occurringBnationalistBmurdersBmotionBmentallyB	mechanismBmarryBmarinesBlewinskyBlatelyBlabelBkillsBjanetB	introduceBhypotheticalBhrcBhinduBhelicoptersBgardenBgaddafiBfameBensuringB
eliminatedBecuadorBdutiesBdriversBdonnaBdomainB
documentedBdisputedBdisorderBdigB
difficultyBdecBdanishBcorrectnessBcorporationBcompromisedBcitysB
challengerBchairsBcautionBcategoryBbriefedBassureBapproachingBantisemiticB
advocatingB57B200000B1964B“whyB“nowBwomensB
withdrawalBwellsBuncleBtricksB	survivorsB
structuresBshe’dBsheetB
separationBscrabbleBrulingsBrolledBrocketBrigBrevengeB
reiteratedBrecessB
quinnipiacB	procedureB	principalBpreliminaryBpersonaBpatBparkingBomarBobstructionBnickBnebraskaBncBlunchBkleinBironyBinsightBinsaneBinmatesBillnessB
harassmentBgrassleyBfillingBfatalBexamineBevolvedBethicalBduterteBdrawsBdeterminingBdeaBcubsBcraftBcoordinationB	contractsBconstituencyBcloudB
celebratedBcapB	belongingBbelgiumBbattlingBarchiveBapplicationsBairedBachievementB20000B“newB“moreB	“donaldBwishesBwireBwarmBwalksBwakingBvolumeBvesselsBtribesBtraffickingBtechnicallyBsurplusB
supportiveBstealingB	screeningBrootedBrescuedBrepairBrefersBrebuildBreBrankingB
presumablyBpreciousB	pragmaticBpostabcBpoorlyB	platformsB	peshmergaBpermanentlyBoptimismBoperatesBmaskBmarchedB
litigationB
likelihoodBkillersBiodineBintroductionBincomesBidentificationB	hypocrisyBhawkishBhangingBgrowsBgovtBfruitB
formidableBflamesBfilingB
family’sB
executionsB	europeansBdurstBdubbedBdressB
disabilityBdigitsBdeutscheBdepthBdebatingBdealtBdapaBcrowdedBcrashedBcoverupBconvictionsBcontributorsBcheersBbuzzfeedBblocksBbergdahlBbaptistBbailoutBayotteB1995B1993BweighedB	warplanesBunawareBtrickBtrappedB
transcriptBsystemicBsurgeryBstafferBsongBslavesBshoulderBsexistBsaltBromanBrogueBreviewsBresponsibilitiesBreinceB
productiveBpossessBnraBmomsBmilitarizedBmicrocephalyBmccabeBmallBlimbaughBliarBlaneBjuiceB	incentiveBhuntingBhorizonBgenerousB
foreignersBfirearmBessenceBepidemicB	endorsingBdontBdelayedBdeanBdamnBcuomoBcrystalBcryingBconcededBcommentatorsB
censorshipBcelebritiesBbreastB
boundariesBbobbyBbeneathBbelongsBbansBbalancedBbaierBavenueB
associatesBassignedBappBanxiousB	announcesB“someBzuluBxBwayneBwardB	unrelatedBuniformBunfitB	triggeredB
treatmentsBtemperaturesBtandenB	suspicionBstripBsteppingBsoundedBsnyderBslammedBsinkBricoBrevBretaliationBresetBreliedB
predictionBpredictableBphilipBpatriotsBobligationsB
neoliberalBmsmB	moderatesBmodeBmishandlingBmarcBlikewiseBjustificationBjeffreyBintentionallyBinstructionsBinhabitantsBhondurasBgunfireBfractionBforestBeurozoneBeruptedBenBemwaziBeggsBearningBdesertBdeployBdebacleBcoffeeB
clinton”BclinchBclimbB
chairwomanBceaseB
capabilityB	caliphateBburnsBbatteryBbasementBangelaBadvancesBacknowledgingB1970BwhistleblowerBvirtualBupwardB	unlimitedBtrustworthyBtracksBsweepBshakingBrohioBrhodeBreversedBretainB	restoringB
respectiveBremarkBregardedB
referencesB
recruitingBquestionableBpunishB	prosecuteBpreciseBplanetsBpaintedBopecBmotivesBmidstBmarsBmanipulatedBluckBlosersB	interveneBinappropriateBidentifyingBhumorBhikeB	group’sBglobalizationBfitsBfingersBfinancesBfelonyB	featuringB	expectingBexaminedBdistinctionBdelawareBdareBconcessionsBcompensationBcommonlyBcnn’sBcheaperB
chancellorBchambersBcasinoBcarlB
capitalistBcallerB
calculatedBbluntBbennettB	authorizeBapplicationBaltrightB	advancingBactorBaccordBaboardB“withBvisitorsBvalidB	unusuallyBunnecessaryBunescoBthBsuburbsBsubpoenaB
staggeringBspottedB
specialistBsleepingBsimultaneouslyBrallyingBprintingB	prejudiceBpharmaBpermitBoutletBnarrowlyBmorganBminusBmatchupB	manchandaBlimitingBlastedBkashmirB	judgementBindictedBimaginedBhonestyBhatBhardlineBhangBgratefulBglennBfundraisersB	functionsBfulltimeBflowersBfloodBfleeBfascinatingB	exercisesBengineeringBeconomicallyBdropsBdown”B
disgustingB	directorsB	diagnosisBdeliveryBdamascusBcyclesBcrossingBcovertB	continentBconsiderablyBcomplainB	communismBclearingBclarityBclarifyB
charitableBcelebratingBbuzzBbuttonBburstBbuchananBblitzerBbearsBbattlefieldBbarrelBbannonBback”BaerialBadvisoryB
accusationB62B3000B1stBwyomingBwoundsB	wellbeingBvoicedBvisaB	uncertainBtroubledBtallyBtallBsteelB	states’BsprayBsnowB	screamingBsalaryBrudyBrisenBridingBremoteB
rememberedBrecklessB	putin’sB	proposingB
preventionBprevailBpopulismBpopBpivotalBparty”B	partiallyBoccasionallyB	nixon’sBmortgageBmodiBmetalsBlogicalBlife”BlewisBleaningBleanBlaughingBlandedBlabourB
indicatingBimpactsBhoaxB	hiroshimaBhallsB
guaranteesBgaysBformerlyBfishB	executionB	elaborateBechoBdysfunctionBdynamicsBdumbBdrudgeBdislikeB	discourseB
deliberateBdeferredB
criticismsBcreditsBconstituentsB	comparingBcommunicateBcoconutBcnnorcBclothingBclockBcliffBbullyBbudgetsB	breakfastBboatBbjpBbiblicalBbetrayedBbarryBbarriersBbakerB
australianBappliesB	answeringB	afterwardB	advocatedB	admissionBacaB66B600B30000B250B“you’reB“makeBwmwadminBwin”BwildlyBweddingBwalmartBvettingBvagueB
traditionsBtimelineB	terrifiedB	televisedBtaylorBtasteBtalentB	surrogateBstunnedBspendsB
skepticismBsinjarBsettlementsBrewardBrespectsB	reasoningBquotingB
prohibitedB
positionedB	pollstersBplaybookBphonyB	partisansBparticipatedBpalmB
oppressionBon”BnonwhiteBneoconservativeBneighborBmontanaBmeantimeBloomingBlavrovBkurtzBkobaniBknockedBinterimBimmunityBillegalsBideologicallyBhelpfulBgladB
foxnewscomBfossilBformulaBflewBfictionB
escalationBentitiesB
elementaryBdronesBderailBdeportedB
delegationB	defeatingBdecreaseBcuriousBcrownB
constituteBconcedeBcomplainingBchronicBchestBchafeeBcameronBbulletBbolsterBbannerBarabicBalnusraBailesBagricultureB
abedin’sB·B	worldviewBwaryBwarriorsBwagingBupholdBtransferredBtolerateBtechnologiesBsuggestionsBstagedBspyingBsponsorsBspanB	southeastBsirBshortageBshe’llBshapedB
sentencingBseedsBrtexasBrflaBrestorationB	religionsB	reelectedB	realitiesB	reactionsBrayB	rationaleBrampantB	qualitiesBprospectiveBpresentationB
persistentB	penaltiesBoweBoverwhelmedBoriginsB
organizersBoralBobserveBnazisBlandmarkB
irrelevantBiraqisB	initiatedBinaugurationBidealsB	hurricaneBhandingBgiftsBgarnerB	frequencyBfreedBfreddieB
filibusterBfeeBfearfulB
explosionsBexaminationBdraggedB
dominationBdistributedBdennisBcultBcounterpartsB	coulibalyBcheneyBcatastropheBcaptainB	brutalityBblastsBbarbaraB
atrocitiesB
artificialBarrayBaffectsBactivismB85B63ByemeniB	whitenessBwedBwarnsB	voluntaryBvolatileBupsideBupheldBunfairlyBtrialsBswitzerlandB	surrenderBsubstantiallyBspikeBsnipB	sidelinesBroomsB	replacingB	remindingB
reflectionB	rebellionBreaderB
protestorsBprotectsBproposeBpreventsBpreferencesBprayersBpost’sBpodesta’sBpleasedBpermitsBoutstandingB	offendersBnormsBnews’BnelsonB
motivationB
millennialB
literatureBlisaBlegislaturesBlaw”B
kilometersBkenBkadzikB	justifiedBinvadedBinterruptedBinsurersB	instinctsB	inspiringBhurtingB
history”BheightBhatesBhamasBgod’sBgodsBglimpseB	genuinelyBfeudBfalselyBfactoBexportsBemployerBearningsBdrivesBdisproportionatelyBdetectedBcraigBcompany’sBcolinBclownBcheckingBcabalB	brilliantBbricsBbotherB
blumenthalBbirdsB
apologizedBanticipatedB
agency’sB
affiliatesBwouldbeB	workforceBworeBwagedBunnamedBunfortunateBtreesBtoiletBteensBsizableBseverelyB	sentencedBsantaBrwisBreversalBresumeBrespondsBrecommendationB	recipientBrachelBpunchBproxyBprolifeBprintedBpepperB	organizerBonionBnot”BmetadataB	mcauliffeBlaughedB	kissingerBkarlBivankaBis”BinvokedB
invitationBinflammatoryB	infectionBindiansBillusionBhonoredBharborBgridlockBfrontrunnersBframeBforthcomingBforemostBfixedBfeministBexternalBexcludeBentersB
enrollmentBembeddedBeditionBdistractBdisaffectedB	diagnosedBdenverB	deceptionBdamningBcurbBcottonBcopiesBcondemnationBcomebackB	cognitiveBcodesBclothesBcharterBcarlosBburwellBbrockBbootsBbomberBblatantBbareB
attributedB
attractiveB
attendanceBatlantaBallenBacquireBabrahamB50000B“areBzealandB
witnessingBweakenBwarnerBvetsB
vegetablesBunhappyBturmoilB	testamentBtenseBslagerBsamBriskyB	rejectingBreignBregardsBregainB
reflectingBredditBrecoverBreachesBpromotesB
photographBpetraeusBpardonBparallelBparadigmBpanelsBoxygenBovertimeBoursB	orthodoxyBoperationalBoffsetB	obstaclesBobservationsBnotifiedBnodBmergerBmemoriesBmaxBmarathonBmakeupB	magnitudeBluckyBlgbtqBlawmakerBlaunchesBkickingBjumpingBjihadiBjesseBjailedB	investingBinvadeBintegrationBinspireB	inclusiveBinclinedBimprovementB
heightenedBhabitsB
guantanamoBgrabbingBgovernment”BfuneralBformatBfairnessBexperiencingB	examiningB
entrenchedBenabledB	embracingBegBeddieBdismissBdireB	depressedBdepositBdemonstratesBdecreeBdeal”BdealingsBdatesBcriteriaBcontactsB
condemningBconcentratedB
compassionBcommonsBcollectivelyBcheeringBchallengersBcertificateB	certaintyBcareersBcancelBbruceBbranchesBboeingB	blatantlyBblamesB	bilateralB	audiencesBastonishingBassumptionsBadequateBadamsB73BworthyBwoodsBwhereverBwarshipsBwalterBvowingBuprisingB	unleashedB	unfoldingBtwentyBtrashBtrailingBteachesBtaskedBsymbolicBsuppressionB	successesBsputnikBsimonB	signalingBshuttingBshirtBserversBsecrecyB	reinforceBrefrainB
recipientsBqueensBqualifyB
pronouncedBpreparationBpotentBorchestratedBoffenseB
objectivesBmockingBmileBmcdonaldBmapsBlawrenceBjoyBintactBinspectionsB
inherentlyB
imprisonedB	impressedBimminentB	holocaustBfarrightBexpireBerrorsB	engineersBenableBdutchBdryBdistinctBdisappointmentBdebtsB	confusingB
commandingBcitesBcannabisBcalciumB
blackberryBassaultsBartistBanytimeBalarmingB	affectingBadaptBacquiredB2030B“whoB“they’reB“goodByou’dB
yanukovychBworshipB
whatsoeverBwereBwacoBvoxBvowBurgencyBturkeysBtuitionBtrackedBtipsBthing”BtemperatureBtaxationBsystematicallyBsuburbBstoredBsteadilyBstatisticalBsoundingBsomaliaBshoppingBseniorsBscoredB	sanctuaryBruthBriyadhBright”BrealmBralliedBpurelyB	purchasesB	producersBprescriptionBpolitics”BpicksBphotographsBpettyBoutdatedBobstacleBnprsBnoiseB
navigationBmosquesBmonsantoBmobBmindsetB	mentalityBmanagersBlobbyistBlegsBkirkBkasichsBkabulBjoseBjokesBjeremyB	isolationBiraq’sB	invisibleBinterpretedB	interfereB
incentivesBher”BhaleyBguiltBginsburgBfuturesBfredB	formationBfilmsBfactionBenactBdubiousBdivorceBdistrustBdisdainBdemonstratingBcrushedBcriminalityBconvenienceB
contentionBconfirmsBcollegesBcolBclinicsBchampionshipBcenteredBcelebrationB	catherineBboomBboersBbindingBbelovedBarmoredBappealedBakaBadvisingB	addictionB
accordanceBabuB800B76B650000B“doBzarifByieldBxlB	workplaceBwinnertakeallBvergeBvastlyB
unemployedBunderminingBundercutBtriumphBtripsBthoroughBthickBtappedBsugarB	spectacleBsiliconBsectorsB	secondaryB
rhetoricalB	reprintedBreactedBrankedB	promotionBproblematicB	pertinentBperezBpassionsBouterB
objectionsB	night’sBmurrayBmoviesBmorallyBmohammadBmetersBmerrillBmeritsBmercyBmentorBmartialBmalesBluxuryBlaughterBlackedBjewB	jeffersonBitemBisraelsB
instructedBindependentlyB
householdsBhostingBholesBgreedBgraniteBgradeBgrabsBgestureBfollowupBflashBfinanciallyBfiberBfestivalB
father’sB
exceptionsBexceptionalBenrichBenjoysB
engineeredB	emphasizeBeliminatingB	disclosedB	developerB
designatedBdemocraticallyBcyprusB
correctionB
coordinateB	componentB
commentingBcollinsB
collectingBcoincidenceB	citizenryBcircusBcholesterolBcheeredBchaseBcalculationBbullyingBbretBbreakthroughBboastedBbehaveB	authenticBarrivalB	apparatusBambitionBamazonB
affiliatedB	achievingB
accuratelyBaccuracyB
abandoningB72B59B4000B19thB1960B“mostB“justByaleBversionsB
unilateralBtrucksBtreatsBtransactionsBtouchedBthwartBthugsBtechnologicalBsīriusBsympathyBsustainBsumsBstemBstampsBstagesBsparkBspamBsmearBslightB	slaughterBsillyBshyBshoreBsexismB	separatedBsabotageBruinedBrippedBretakeB	restraintBreedBrecountBpunditBprovokeBprovocativeB	protestedB	profilingBpredecessorB
polarizingBpeersBosamaBoneononeBnBmultinationalBmidwestBmentionsBmarketplaceB
manipulateBmaliBlovingBkuwaitBjudgingBimBiraqsB	intensityB	insurgentB
instrumentBinstabilityB
innovationBinfectedB	incapableB
inaccurateBimperialismB
imperativeB
illuminatiB	identicalB
hypothesisBholtBhoganBheroesBhardworkingBgraspBgoodmanBgenericB
friendshipBfridaysBfrancesBfovalBfortunesBflockBflightsBfantasyB	extendingBexpectationBescalateBeffectivenessBeditedBdistractionB	displayedBdisagreementsBdefianceBdawnBcornBcoreyBconfederateBcleaningBciteBcheckersBcharacterizedBchantingBcautiousBcannonBbureaucratsBboycottBbill’sB	benefitedBavertBagingBacknowledgesBachievementsBaccordinglyB1986B“wellB“byByear”BweighingB
wednesdaysButilityBussrBunstableBtwostateBtornBtonsBtideB
terrifyingBteneoBsympatheticBswipeB	subjectedBstrictlyBstephanopoulosB	specificsBsolvedBslipBslimBslainBsierraBshiaBshapingB	sectarianBsafelyBrubbleBromeBretireB	renewableB
referencedB
reductionsBrecruitmentB
reconsiderBrecognizingBquestB
purchasingB
proportionBpremiumB
predictingBpowellBportrayBpoisonBpocketsBpetB
performingB
o’malleyBovertBoverhaulBorgansBobscureBnycBnortheasternB	nightclubBnamingBmoroccoBmissionsB
mentioningBmeltdownBmedia”Bman’sB
liberationBlendingBkyleBjurorBjuniorBjungleBimposingBimplementingBhybridBhungBheelsBhaulBhatefulBgutBguidedBgreetedBgloballyBgermany’sBgangsBfringeBforeignpolicyBfenceBfanaticsBfalloutBexplanationsBexecuteBevolveB	ethnicityBearliestBdragBdividesB	dismantleBdisappointingBdespairBdemonstrationsBdeliversBcynicalBcubansBcrushB
courageousBconstituenciesB	compelledB
comparableB	commentedBcollaborationB
closeddoorBbustBbridgesBberlinBbasketBbananaBattachedBarsenalBarrangedB
apprenticeBabsenteeBaaronB1984B15000B130B‘weByardBwrappedBwomen”BvirtueBviolatesBviewingBvictorBvenueBtshirtBtravelsBtransformedBtrailsBtouristsBtobaccoB	thursdaysBtestifyBterritorialBtalentedBsuppressB	strengthsBstanfordBslogansB
signaturesBseekersB
scalia’sBsavageB	satiricalBsamplingBrulersBresistedB
regulatorsBrecruitBrealdonaldtrumpBrarizBputinsB	princetonBpredominantlyBportmanBpledgesBpizzaBphrasesB	persuadedB
o’reillyBowedBoutbreakBorbitBnypdBnetherlandsBmonitorsBmetroBmatthewsBmatrixBmatchedBmadridBmadisonBlocalsBloadedBjustinBinventedBinterventionsB
integratedBinputB
infectionsBindianapolisB
identitiesBhysteriaBhighlightingBheidiBhatedBgeniusBgasolineBfunctioningBfuelsBfreezeBframedBfoundersBfinestBfinesBfeedingB	exploringB	exploitedBessayB
escalatingBengineerBelevatedBdownloadB	disappearBdemocrats’B
defendantsBdeclaresBcrushingB	courtroomBcontemporaryB	concealedB	cofounderBcoachBcivicB	certifiedBcarneyBboehnersBblairBbendBbashBbagsBanalysesBamongstB	alliancesBalbeitBadverseB71B2ndB1972B“hasByellenBworryingBwork”BwindsB
weaknessesBvowsB	voters’BviennaBvetBverbalBunbelievableBunanimouslyBtweetingB
trajectoryBtillBtheydBtentB	teachingsBtapesB	takeawaysBtackleBsuffersBsudanBstrengtheningBstoleBsponsorBsinkingBsinBsimpsonBshookBsextingBsearchesB	repealingB
reluctanceBreinBredistrictingBrecommendationsBrainBradicalsBpumpkinBptsdBpropositionB	proceededBprobabilityBpreparesBprayingBpraisingB
positivelyBpodiumBplottingBpleaB	pipelinesBpersonalitiesBperpetratedBparadeB	o’keefeBnormBneoconservativesB	necessityBmormonBmorenoBmoB	milwaukeeBmeaslesBmarchingBmafiaBloudlyBloserBlikudBladiesB	kellyanneBjuanBin”Binvestigation”BintimateBintensifiedBinstallB
injunctionB	informingBimfBhunterBhouse”BhikesBhegemonyBgrimBgridBgraphicB	graduatedBgottaBgospelBgeraldBfoesB	filmmakerBfiguredBfacultyBexpelledBevanB	estrangedBenhancedBempowerBemotionBeggB	efficientBearsBdysfunctionalBdunfordBdoomedB	disregardB	detaineesBdeputiesBcoursesBconsequentialBconfidentialB
concessionBconBcombineBclarkBchessBcheerBchattanoogaB	cautionedBcairoBbureaucracyBbuckleyBbrooksBblessBbeaconBbarringBbarrierBaviationBashamedBaccomplishmentsBacceptsB
abdulazeezB74B“whileB“wasBverifiedButterBurgesBuniversity’sBtwistBtraumaBtranscriptsBto”BtoxinsBtaxiB	system”B
systematicBsyriasBswedishB
substancesBstatuteBssBsquashBsoulsBsmileBslippedBsetupBsectionsBsealBscamBsatanBrocksBrestoredBresolutionsB	republishBremarkedBpursuedBproudlyB
protectiveB
proclaimedB
principledB
preservingBpouredBpourBportlandBphdBperformancesBperceiveB	passengerBparkerB	pakistaniBorganisationsBorganisationBoliverB	occupyingBnytBnwoBnominee’sBnegotiationBnationalistsBnamelyBmockBmarquezBmarkingBmankindBmanhuntB
manchesterB	loyalistsBlongestBlinedBliberateB
liberalismBlaysBlandingBkunduzBjpBjokedBjoinsBinterestinglyBintellectualsB	incorrectBinboxBimpliesBhometownBhavanaB
groundworkBgripBgovernor’sBfulfillBfrozenBfreshmanB
fraudulentBfrancoisBfoundation’sBforgiveBfoolishBfliesBflawsBfacialBexploreBexistentialBexhibitB
evaluationB
europe’sBentranceB	emergenceBeatenBearBdumpedB
dominatingB
dissidentsB
discretionBdioxideBdilemmaBdifficultiesBdesiredBdeficitsBdefensesB	defendersBdebatedBday”BdarknessBcustomsBcropsBcompromisesBcommanderinchiefBclearerBcheatingBcaringBcaliforniasBcageBbullBbrotherhoodBbraggingBbossesBbootBboostingBbirthsBbellBbeerB
bargainingBashBarrivesBantiwarB	accountedBabusedB9thB78B1979B
“don’tByellingBwhipBwatchdogBvote”BvictoriaBtshirtsBtroublesBtreatiesB
tighteningBthankedBswissBsweetBsuppliedBsociallyBsoaringBslideBslaveBsinisterBsingerBsgtBseventhB
separatelyBsearchedBscrambleBscholarBscaliasBrussellBrobbyBrisesBriotingB
restrictedB	residenceBrentBrebukeB	realizingBrealclearpoliticsBragingB
proponentsBprobableBpreviewB
presentingBpravdaruBposingB	portfolioBpillBpalmieriB
overseeingBoptedBnonexistentBnbc’sBmullenB
mosquitoesBmoney”B	media’sBmanufacturedBliningB
likemindedB	legendaryBleftistsBlauraB
largescaleB
laboratoryBklanBkarenBjoelBjob”BirelandB	installedBinciteBidahoBhomicideB
historiansBhillsBheavenBhassanBhardestBgravityBforestsBfilingsBfargoBexplodedB	expertiseBexcludedBequationBentitlementBentiretyBenduringBendureB	earth’sBdustBdugBdouglasBdotcomBdirtBdeptBdemocraciesBdelaysBcureB	crackdownBcorrespondenceBcopeB
contingentBcoinBcoBclinicalBclinicBclerksBcjiBcirculationBcirculatingBchristopherBchemotherapyBchantsBcentrifugesB	cellphoneBcarriersBcaredBbreachBborrowedBbonesB	behaviourB	awakeningBattributionBaristocracyB	approvingBanthemBanalyzedBaidsBadvisorsBacluBaccidentallyB69B5thB500000B3rdB1989B1976B1973B“getB“everyBwirelessB	wikipediaBwhollyBwheelBwell”B	welcomingBwarriorB	utilitiesBurlBunifyBunderscoredBtransformationBtoutingBtheirsBteenagerB	techniqueBsyndromeBsymbolsB
suspensionBsunkBsumBsufficientlyBstraightforwardBsteamBstaterunBstancesBstampBspontaneousBsoccerBsmarterBskipBskillBshoresBsharptonBservantsBserialB
sentimentsBsecretarygeneralBrunupBrockefellerBrevisedBreproductiveBreliesB
recognizesBratioB
public’sB	publicityB
psychologyBprovokedB
profoundlyB
proceduralBprecinctBpensionBoccursB	obsessionBnovelBnoseBnepalB	nation”B
microphoneBmalaysiaBlinkingBlimitationsBliarsBlegBjihadBinterferingBinsufficientB	inclusionBimpactedBimaginationBhintB
headtoheadBhartBhabitBgrassB	graduatesB
generatingBgapsBfuelingBfrontsBfrackingB
forcefullyBflowsBfloatingBflexibilityBfecBfearingBfdaBfatsBfaithfulBexemptBeveryone’sBevenlyBdylannBduncanBdisgustB
devastatedBdestinyBdesignationBdescentBdepositsBdemonstrationBdefundB
definitiveBdecisionmakingBdangerouslyBdanceB
currenciesBcurielBcoordinatingBconvertB
convenientB
contractorBcontendBconsumedBconservationB
connectingB	concludesBconcentrationBcomposedBcomedyBclientB	charlotteBchantedB
carson’sBbrutallyBbowlBboneBboastsBblownBblogsBbidsB
attributesB
assertionsBassB	arroganceBanbarBalignBaidingBaidedBagendasBacronymBacademiaB1983B1981B1500B“yesB“rigged”B“manyBzionistsByorkerB	wrestlingBwreckageBwednesday’sBwarrantsBvacancyBusbackedB	uninsuredBunifyingB	trillionsBtissueBthursday’sBthumbBthreadBtheodoreBterrainBsunnisBsuingBstrawBstormedBstimulusBsternB	stationedBstartupsBslatedBsistersBseedBscrewedB	russia”BruinBrubberBrssBrichardsBreconciliationBrecipeB	radicallyBqualificationsBpsakiB
profitableBprisonsBpresstitutesBpoweredBplaguedB	pinterestB	paytoplayBoverturnBovershadowedBopioidBobservationB	nutritionBnominationsB
narrativesB	murderersBmonsterBmonopolyB
mistakenlyBlootingBlifelongB	leftrightBlectureBlazyBlawfulBkaganBjudgedBislamophobiaBirresponsibleB	instantlyBinfoBincomingBimmoralBignoresBidlibBidiotBhpvB	horrifiedBhooverBhodgesBhindutvaB
hillary”BhaganahB	franchiseBfavorabilityBfartherBfabricBextractBexploitationBexceptionalismBexceedBevolvingB	evacuatedBemployBellisonBdoleB	displacedB	disordersBdeportationsBdeplorablesBdemBdeleteBdefiningBcruelBcropBconsolidationB
confirmingBcolombiaBcalculationsB	biden’sBbatonBawaitingBaustriaB	assad’sBarmingBapplyingBantisemitismBantiabortionBammonBall”BagriculturalBadviseBadoptionB
activationB1987B1978B1945B14thB140B“willB“politicalB“hisB“fromB“foxBwintBwe’dBweaponryBunilaterallyBukraine’sB	translateBtigerBthirtyBthesisBthanksgivingB
tendenciesBtelBtasksBtaleB	switchingBswantonBsunlightBstrangerBstomachB	stockpileBstaysBspurBsometimeB	solicitorBskiesBsingingBshootersBsensibleB
securitiesBscathingBsalmanBrepliesBrejectsB	readinessBquakeBproviderBprotrumpBprohibitB	programmeBpricingB	pressuresBpouringBpoundsBpostureBpolicymakersB	poisoningB	physicianBphilosopherB
person’sBpersecutionBpaul’sBpartisanshipB	overreachBorleansBolympicsBnulandBnobleBneuralBmountedB
morris’sBmoralityB	messagingBmedalBmathematicallyBmarshallBmarginalBmantraBmaneuverBmakersBloverBleftleaningB	languagesBkwnBkluxBjurisdictionBjournalisticB	islamistsBironicBinteractionsBinteractionB
insistenceB	inflictedBinconsistentBimpunityBimportBillustratesBhurtsBhilaryB	hezbollahBheroinBhawkB	happen”BgroceryB
grievancesB	gratitudeBgerrymanderingB
georgetownB
geographicBgateBfrighteningBfoolB	firsttimeBfinancedBfiatBfareBextendsBepicBenhanceBenforcedBenduredBemiratesBemergesB	embattledB
electricalBeasingBdrillsBdrillingBdoomBdone”BdivineBdisplaysB	disgracedB
directionsBdifferBderivedBdefendsBdeepestBcriesBcriedBcornersBcookingB
conversionBconfrontingB
competitorBcheatBcentsBcatsBcartoonBburrB	breathingBbreakoutBbrashBbrandedBbraggedBborrowBboringBboothBbombedB
bluecollarBbevinBbentB	beheadingBbarrageBbankerBbailBawesomeBawardsBarthurBarabianBalteredBairlinesBadversariesBadjustBaccusesBaccommodateBabcsB81B400000B1967B1930sB10thB
“let’sByeBwronglyBwivesBwipedBwindowsBwhistleblowersBwest’sBwebsterBweakerBweakenedBvonBvolumesBvnnBvicepresidentialBvesselBventureBvaryingBuproarBuBturfBtunisiaBtruthsBtoughestBtorturedBtimothyBtiltBthinkersBtextsBtablesBswathB	survivingB
supplementBsubwayBstanleyBspellBspecifyBspareBspacesBsolidlyBsinghBsincereBshoesBsheriff’sBshelterBsetbackBscriptBscalesB	saturdaysBsaponinsBriftBrichestBrevenuesBrelianceBrelatingB
reinforcedBrealizationBracistsBquippedB	quarterlyBpushesBpurportedlyBproducesB
problem”BpretextBpremiseBpolledBplungedBplasticB	person”BpbsB
patriotismBpaintingB	overwhelmBoverseeB
originatedB	oppressedBobservatoryBnicholasBmuskBmuscleB	municipalBmourningB	mortalityBmobilizeB
militarilyB	methodistBmanipulatingBmanagesBloadingBloadBliverBleaseBkuBkneesBkatieBjaneBinvadingBinteractBinstantB	injectionBingredientsBincitingBiconBhydrogenBhewlettpackardBhardwareB
hardlinersBhadiBgiantsB
friday’sBfrayB	forwardedBfortunatelyBforgotB	forefrontBfishingB	firsthandB	firestormBfirefightersBfilterBfeedsBfactcheckingBexperimentsBexcessBestablishmentsBequippedBentertainingB
encouragesBemotionallyBelderB
dispatchedB
dismissiveB	disagreedBdiegoBdictatorshipB	detailingBdeservedBdeclinesB	deadliestBcrowB
courthouseBcoupledBcounterpartB	counteredBcooperatingBcontradictionBconsultantsB	consulateB	constructBconstitutesBcommoditiesBcocaineBcloudsB	clarifiedBclarenceB
cigarettesBchorusBchoosesBchomskyBcaseyBcampbellBcalaisBbullshitBbrokeredBbrinkB	briefingsBbrainsBboxesBbowBbe”B
beneficialBbeauBbataclanBarrivingBanchorsBakinBagedB
afterwardsBaccommodationBabout”B77B40000B‹B“americanByoureByork’sBwavingBvoidBvinceBvidalBvacationB	upholdingBunconsciousBtwelveB	truthfeedBtradedBtourismBtoomeyB
thoughtfulBthompsonBthielBteslaBtaserBsupplementsBsummedBsummaryBsuitsBsubtleB
strongholdB	stirewaltBstalledBsphereB	sotomayorBskilledBshopsBsergeiBselfidentifiedB	selectingBsecurity”BsaintBrutahBrscBrollsBrodgersBripB	reversingBresonateB
resentmentBreopenBrelentlesslyBreducesBredistributionBrecruitsBramificationsBracketB
prosperousBpromptB
proclintonB
processingB
privilegedBprepB	predatoryBprB	policy”BpoisonedB	pointlessB	pervasiveBperiodsB
peacefullyBpathsB	particlesB	paperworkBpaglianoBoffensesB
occasionalB	obtainingBnusraBnurseBnflB
netanyahusBnateBnakedBmusketBmobilityBminorsB	memorableB
mechanismsBmargaretBlyndonBlestB
lastminuteBknifeBissue”B
intimidateB	integrateB	inquiriesB	innocenceBindicationsBincompetentBimplicationBhurdleBhungaryB	highlevelBgubernatorialBgermansBfuryBfuckBfruitsBfragileB	forecastsBfoerBfiveyearBfactoryB
facilitateBenvoyBempathyB
eisenhowerBegyptairBedwardsBechoingBdraftedBdisgraceBdiscriminateBdisciplinedBdisagreementBdisabilitiesBdictateBdeterBdestroysBdesperationBdatedBdacaBcontaminatedBcompiledB
circulatedBchristie’sBchargingBceutaBcentBbuyersBboardsB	bengurionBbelmarBbankruptBaumfB	architectBapocalypticBangrilyB
admirationB	academicsB5500B250000B1975B“whiteB“letB“blackB“bigBÂB
yugoslaviaByazidisByahooBwishedBwastedBwarheadBvulnerabilitiesB	voters”BvicepresidentBvenusBunthinkableB
triggeringBtributeBtrapBtraitsBtrainsBtopsBtombBtoday”BtierBtendedBtapBswiftlyBsurveyedBsupervisionBstrategicallyBstoltenbergBsquadBspringsBspiritsBsocietalBsmoothBslamBsicBshorterBshakenBsfBsettlingBsergeyBselfdescribedBsatanicB
sacrificedBrussBroyB	righteousB
responsiveBrelateB
reasonablyB	primetimeBpresumedB	pregnancyB	precinctsBpraisesBportionsBpopulaceB	plutoniumBpileBperpetratorsBpatheticB
overturnedB	onslaughtBoceBnoonBnightlyBnigeriaBnato’sBmonteBmodifiedBminimalB
midwesternBmessyBmeritBmediumB	matter”BmathematicalBmaritimeBmariaBmanualBmandatedBmaddowBlicensedBlegalizationBlabBkenyanBjacketBirishB
irancontraBiowansB	intensifyB
insurgentsBinroadsBinfluxBinflammationB	india’sBinchesBimperialistBhypeBhungryBhubBherbsBhammerBgutsBgraysBgrantingBgeneticB	future”BfncB	firsttermB	feministsBfamilysBextraterrestrialsBexportB	exhaustedB
exercisingBevilsB	evidentlyBensuresBendorsesB
emboldenedBeducateBechoesBeasterBdumpingBdownwardBdonatingB
disruptionB	disastersB
diminishedBdetectB	deployingBdemeanorBdeliberationsBdefiantBcreatureBcraftedBcracksBcornynBcoordinatorBconvenedBcontinuallyBconsumeBconstructiveBconfuseBconferencesB	concertedBconcentrateB
componentsBcompassionateBcolonialBcoinsB	christiesBchickenB	charitiesB
championedBcbnBcattleBcartelB	capturingBbucksBbroadcastingBbreatheBboosBbookerBblessedBberkeleyBbarclaysBbarbaricBathletesBassistedBassessmentsBare”B
appointeesBannuallyB	analyticsBameBain’tBagBaffirmativeBadvertisersBadministratorB
accelerateBabsorbB	aborigineBabaaoudB93B30thB247B2025B1965B“thoseB“ofB“afterBzionismBypgByellowB
xenophobicBwowBwoesBwilsondavisBwideningBvtBvigilantBunsureBunsuccessfulBunidentifiedBunfavorablyB
underminedBumbrellaBtranslationBtractionBtikritBthreedayBthenpresidentBterrorism”BterriblyBtemperBsyria”BsurvivorBsurgedBsupremacistBsuperchargeB
submarinesBstrengthenedBstirBstartupBstandardbearerBstackedBspectacularBspeakershipBsenator’sBsealedBscorpioBschmidtBschiffBschemesB
sacrificesBrowanBrobbedBrioB	rights”BrewriteBreutersipsosBrestsB
resoundingBreservationBregretsBrecallsB
rebuildingBreassureBratedBranchBrampageBpurpleB	publisherB	protocolsBprophecyB	pretoriusBprefersBpredictablyBpredatorB
practicingBpodcastBplotsBpleadedB	planetaryBphilBpeaksBparttimeBpantsBowningBonstageBnotifyB
neutralityBnavigateB
napolitanoBnaiveBmurdochBmisinformationB	misguidedBminimizeBmethodologyBmercuryBmeddlingBmarthaBman”BmalikBmadnessBmacB	lowincomeBlesbiansBleapBlawnBlameBlabelingBkosovoBkeysBit’llBinviteB	interceptB
inspectorsB	inheritedBinformalBinfluencingBimportsB	impendingBHhttpwwwinfowarscomwpcontentuploads201510brainforce25200e1476824046577jpgBhermanBheckB	headlinedBhatsBhaiBhacksBgrosslyBgloryBgladlyBgeneralelectionB
gatheringsBfoulBformingBflurryBflorida’sBfixingBfinlandBfemaB	fasttrackB	fantasticB	factoriesBeurosB	espionageB	escalatedBenjoyingBelevenBeldersBedgesBdivorcedBdislikedB	discreditBdiscouragedBdevilB	descendedBdemiseB
delusionalBdelhiBdeedsBdeckBdaplBdamnedBcousinB	correctedBcoolerB	convertedBcontinuationBconfrontationsBcondolencesB
communistsBcommunicatingB	commodityB	commenterBcolorsBclubsB	classroomBchillingBceosBblastingBbishopBbillyBbermanBbelongedBbaggageB	attributeBastronomersBassertB	assembledBartsB	artilleryBantigovernmentBalbrightBalarmedBairingB
accessibleB87B3495B2246B1974B	15yearoldB125B“yourB“takeBwritingsBworkrelatedBwondersBweighsBvisasBvirginB	violentlyB
vigorouslyB
victoriousB
venezuelanBussBunveiledB
unresolvedBuniquelyB
unansweredB	unanimousBtwistedBturksBtroopBtribunalBtransnationalBtolerantB	tightenedBthwartedBthrustBtheoreticallyBtheoreticalB	telegraphBteenageBteenBtailBsurgingBstrainedBstonesB	startlingB	starbucksBspBsouthernersBsnapB	singaporeB	shrinkingBsheriffsB	shatteredBseparatistsBsellsBseemingBsciencesBsandlerBsalariesBruthlessBrougeBromaniaBrivalryBritualBrightlyBrevolutionsBrepealedBreminiscentBremedyBrelievedBrearBreadilyBpunchedBprotocolBprogrammingBpress”BpresidedBpremierBpoundBpostelectionBpoliteBpolarBplouffeBpledgingBplateB
plaintiffsBplace”B
pittsburghBpitchedBpipeBperceptionsBpenchantBpaulsBpatienceBpalaceBoverlyBoutlineB	nutrientsBnullificationB	northwestB
nonprofitsB
nominee”B
negotiatorB	neglectedBnbcsBmosbyB	mobilizedBminersBmeltingBmatteredBmaskedB
majorpartyBmaintenanceBmagnateBlucasBlowsBloweringBlockheedBlizB	licensingBlengthsBlemonB
legalizingBlamentedBking’sBkingsBkickoffBkennethBkeithBkeenBjesuitBjaBivtB	issues”BinvestigatorBinternationallyB
innovativeBinfantryBimmenseBillicitBhughB
horrifyingBhollowBholdersBheraldBheightsBharassedBhailedBgray’sB	gorbachevBgoodnessBfuckingBforeignbornBfoeBflanaganBfisaBfeedbackB	favorablyBfatallyBfascistsBexcusesBexcerptsBexceededBernstBepsteinB	enforcingB	energizedBencounteredBembarrassmentBdwightBdoubledigitBdoggedBdividingBdistinguishedBdisposalB
dismissingB	dimensionBdiesB
detractorsB
deplorableBdefenderB	decreasedBcrowleyBcrapBcpacB	coworkersBcoryBcontinentalBcontentsBconsiderationsBcolumnsBcohenBclueB	clearanceB
circumventB	chemistryBcharismaticBcharacterizeBcharacteristicsBcartoonsBcarsonsBbuffaloBbrewingBbottlesBbogusBboehner’sBbirtherB	believersB
basketballBbargainBbackerB
azerbaijanBawardwinningBavivBattendsBashtonBarteriesB
antimuslimB
anticipateBankaraBairbnbBaffluentB84B33000B16thB“warB“evenB“didB	“bernieB theByelledByardsBwydenBwoodBwingsBwashingtonsBwarplaneBvisionsBvendorBvanishedBvaccinationBupheavalBuntoldBunsustainableBunqualifiedB	univisionBunfoldB
unfetteredBundoBuncommonBtwopartyBtumorsB	tragediesBtonnesBtighterB	things”BteethBswordBsummersBsufiB	submarineBsteerBstaunchBsmellB	slightestBsidedBshocksBselfdeterminationB	secretiveBsecretariesBsamuelBrtexBromanticBriotersBretiringB	resistingBrenewBrenderB	recruitedBralphBrailBqaBproneBprobateBpreparednessB
preferableBpredecessorsB	practicedBpower”BportraitBpolishBplantedBpipesBpilingBpfeifferB
pesticidesBperspectivesB	perpetualBperoxideB	paralysisBpalmerBowesBover”BoutsetB	outliningBoutgoingBorthodoxBobsessedBobeyBnonBnewsweekB
nevertrumpB
negativelyBneedlessBnascentBmutuallyBmotivationsBmodernizationBmistakenBmisogynyBmirrorsBmemeB	mediabuzzBmeaninglessBmarginalizedBmarcusBmachadoBlynchsBlitB	lingeringB
lieutenantBlewdBlensBlegendBkyBkosherBknightBkitsB	jordanianBjenB
irrationalBintentionalB
insurgencyBinsightsB
indirectlyBincriminatingBincompetenceB
identifiesBickeBhusbandsBhurdlesBhuffpostBhormonesBholdingsBhayesBhaBgunnedB
graduationBgenevaBgawkerBgalacticconnectioncomBgaffesBfriedmanBfraughtBframingB	fortunateBforgeBforcefulBflownBflickrB	fireworksBfiftyBexpiredBexaggeratedBengineB	employingBeligibilityB	egregiousBdrasticallyBdowB	distortedBdiscreditedB
disapproveBdemocracy”BdecriedBdecencyBdealersBdashBcurtailBcronyB
criticallyBcritesBcrackedBcowboyBcountries”B	consumingBconstructedBconflictingBcommittee’sBcloutBcleverB
classmatesBclarkeBchadBcatchingBcarolBcancersBcabinBbusesBbumpBbradBboerBblitzBblankBbirdBbindBbenensonBbeltwayB	battalionBaveragesB	austerityB
assaultingBaspirationsBarsonBappropriationsBappreciationB	applaudedBanalyzeBalltimeBalertedBairportsBagencysBaffiliationB
accustomedBaccumulatedBaccomplishmentBabolishBabdeslamB83B79B700B1985B11thB“tooB“ohB“lookB
“clintonBtheBwikileaks’B
wealthiestBwadeBvulnerabilityBvulgarBviktorB	viabilityBvacuumBunfoldedBunderscoresB
ukrainiansBufosB
turkey’sBttipBtripleB	transfersBtowersBtoutBtimelyBthriveBtexanBsucceedsBstumbledB	stephanieBstatutesBspouseBsparkingBso”BsolvingBslippingBsketchBskepticsBsilencedBshowerB	shouldersB	shipmentsBshareholdersBsettingsBsethBseriousnessB	sequesterBselmaBsellersBscriptedB
scramblingB
satellitesBsaneBsalonBsaid”BsagaBryansBrustBrockyBrockedBrobberyB	revolvingB
retrospectBrepublicans’BrenewalB	reformingB	reconcileBreclaimBpulseBpromptlyBprohibitionBprohibitingBpossible”B
poroshenkoBpitBpistolB	petroleumB	petitionsB
percent”BpeelBparksB
overthrownBottomanB
ostensiblyBorrinBorganizationalBneurologicalBneilB	nefariousBneedleBnarendraBnailB	murderingBmondaysBmoldB
misogynistBminesBmerrickB
medicationBmediasBmatesBmatchingBmanufacturerBmanningBmanafort’sBmammographyB	machineryBlonelyB	logisticsBliabilitiesBleveledBleakingB	lastditchBkhansB
kasich’sB	kallstromBjunkBjohnson’sBjacobBisiBireBinvokeBinvadersB	intenselyBinstructionBinspirationBincidentallyBimplyBimplicitB	illnessesBillegitimateBiconicBhourlyBhopkinsBhome”BhersBheroicBharmedBharamBhandgunBhaltedBguiseBgriefBgeorgianBfutileBforgivenessBforbidBfilmedBfertileBfarmsBfadeBf35BexplorationBenrolledBendeavorB
endangeredB	empoweredBembarrassedBeditorinchiefBeditBecigarettesBearthquakesBdrownedBdrasticBdraggingBdocumentationBdissatisfiedBdisobedienceB	discussesB
denouncingBdefyBdecadeslongB	deadlinesBdarlingBdaisyBcurfewBcorridorB
contradictBconsolidateBconsecutiveBcongressmenB
concludingB
complexityB	combatingBcolourBcolonialismBclipsBclickingBclassificationB	civilizedBcinnamonBchainsBccBbushesBbuckBbrennanBbradyBboxerBbooedBbonusB	bolsteredBbokoBbleedingBbidensB	better”BbattlegroundsBbarredB	balancingBbackwardBaveragedBartistsB
articulateBariseBarchivesB
arabia’sB
antarcticaBalloutBalitoBaimingBacidBaccusersB98B60000B215B“wouldB“rightB“anyB
“americaB‘noByvesByoudBwornB	woman’sBwhoppingBwashBvisiblyBvileBvaryBunsuccessfullyBunrealBunhingedBunderstandableBuberBtwodayBtumorBtrumanBtransitBtradersBtracedBtoo”BtongueBtexBtearingBtaiB
suspicionsB	surprisesBsupposeB
substituteBstrainBstormsBsteepBspurredBsprottB	speculateBspecialistsBspeaker’sB	southwestBsomeone’sBsodaBsoberBsmallestBsinsBshootoutBshadyBshadowsBsergeantBsensitivityBseizingBsaviorBsandB	safeguardBroutesB
rothschildBroeBrestrictingBrestaurantsBrepsBremotelyBrelatesB
regulatingBreferencingB	recountedB	reckoningB	receptionBrcalifBraymondBrandomlyBrailedBradioactiveBpropBprogovernmentBprofB
process”BpotatoesBpositioningBpoliticizedBplungeBplightB	pieczenikBpersistBpatchBparkedB	paragraphBparBpanBoverdueBoustedBoustBounceBopennessBoceansB	objectionBnoticesBnormalizationBnaderBmythsBmumfordBminsBminneapolisB	milestoneBmiceBmen’sB	medicinalBmedicationsBmantleBloopholeB	lithuaniaB	legalizedBlashedBlapseBlanceBknockingBkmBkirkukB	kathmanduBjeopardyBintolerableBinterrogationBintegralB
ingredientBinfBimpliedB	imaginaryBhoodBhillaryclintonBhesBhesitateBhealthcaregovBhangsBhammeredBhadntBgruesomeBgovernedBgordonB
geologicalB	gentlemenBgavinBgavelB	frontlineBfor”BforgedBforbesBfoiaBfloodedBfleshBfinalizeBfieryBfeasibleBfastestBfarmingBfaithsBexplodeBexpendituresBexecutesB	excludingBexcerptB	evidencedBentrepreneursB
enrichmentBenragedBdroughtBdriftB
downplayedBdollyBdolezalBdodgeB	diversionBditzBditchB	disturbedB
distractedBdistinguishB
disruptiveB
discourageBdietaryBdestabilizeBdesiresBdemagogueryBdelBdefinesB	defendantB	decidedlyB	critiquesBcrashingBcozyBcourtingBcorrectionalBcorkerB
control”BcontinuouslyBconsistsBconsequentlyBconquerB	confessedBcommissionsBcolumbusBcoastalBco2BclownsBclaireB
cincinnatiB	cigaretteB	childrensBchavezBchatterBchartsBcentralizedBcensoredBcargoBcandyBcandidates’BcaBbustedBburyBbrushedBbrushB	brazilianBbradfordBbracketsBbotchedB	borrowingBboltonB	blueprintB	bloodshedBblessingBbiologyBbigotedBbettingBbetrayalBbeneficiariesBbeirutBbattsBbatchBbarrettBbarrelsBballsBbackupBauthenticityBassassinationsB	armstrongB	argentinaBappropriatelyB
appointingB	appallingBanticipatingBanneBamericans”BallahB
alienatingB	alienatedBadhereBadhdB	acquittedBabusiveB	abilitiesB777B218B
“she’sB	“nobodyB“neverB“mrB“meetB“firstB‘aB‘BzulusByoursBwrathBwoman”BwndBwipeBwillieBwildersBwieldingBwearsBvigorousB
vietnameseB	vibrationBvendorsBuptickBupstateBuphillBunleashBunjustB
unintendedBunexpectedlyB
underneathB
undeniableBumBtsaBtroveBtrollsBtreyBtransformingBtransBtoppleBtonightsBtheyreBterrificBtelecommunicationsBtataB	surplusesBsurgeonB
suppressedBsunshineBsunnyBsubscribingBstrokeBstrippedB	stretchedBstreamsBspecterBsoniaBslotBshrinkBshermanBshariaBshakeupBselfhelpB	scatteredBsangerBsamplesBsamanthaBsafe”BrudeB	rodriguezBrodeBrigorousBrewardedBrethinkB	republicsBrepublicanleaningB	reformersBreactingBraidedBquartersBpyramidBprovocationB	protectorB	prolongedBproliferationBprojectionsB
professionB	presentlyBplantingBphotographerBphillipB
philippineB	phenomenaBpeacekeepingBpavedBparanoidBpanamaBpaleBoverrunB	other’sBorganization’sBorderingBoperatorBonethirdBonesidedBominousBoff”BoffshoreBobjectedBnutsB	nonwhitesBnjBnicknameBnestBnervesBmyriadB	multitudeBmormonsBmonarchyB	miserableBmikhailBmercerBmayhemBmatchesBmaryamiyyahBmarbleBmansBmaduroB	macfadyenBlureBloweredB
lowensteinBlouderBlottB	listenersBliquidBlawlessBlaurenBlaughsBkincaidBjuicingBisaacBiphoneBinsultedBinstrumentalBineffectiveBindignationB	indicatorBinchBimplyingBimageryBillustrationB
illustrateBibrahimBhumiliatingB	homicidesBhicksBherridgeBheatherB	heartlandB	healthierB	happinessBgunshotsBgropingBgo”BglovesBglasssteagall
??
Const_5Const*
_output_shapes	
:?N*
dtype0	*??
value??B??	?N"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_11208
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *#
fR
__inference_<lambda>_11213
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?-
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?-
value?-B?- B?-
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
;
_lookup_layer
	keras_api
_adapt_function*
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$_random_generator
%__call__
*&&call_and_return_all_conditional_losses* 
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
?
/
loss_scale
0base_optimizer
1iter

2beta_1

3beta_2
	4decay
5learning_ratemg'mh(mivj'vk(vl*

1
'2
(3*

0
'1
(2*
* 
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

;serving_default* 
7
<lookup_table
=token_counts
>	keras_api*
* 
* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
 	variables
!trainable_variables
"regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 
* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 
?
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
,
Scurrent_loss_scale
T
good_steps*
* 
SM
VARIABLE_VALUEcond_1/Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEcond_1/Adam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEcond_1/Adam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcond_1/Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEcond_1/Adam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

U0
V1*
* 
* 
* 
R
W_initializer
X_create_resource
Y_initialize
Z_destroy_resource* 
?
[_create_resource
\_initialize
]_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
nh
VARIABLE_VALUEcurrent_loss_scaleBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
good_steps:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUE*
8
	^total
	_count
`	variables
a	keras_api*
H
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api*
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

`	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

b0
c1*

e	variables*
??
VARIABLE_VALUE"cond_1/Adam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEcond_1/Adam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEcond_1/Adam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"cond_1/Adam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEcond_1/Adam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEcond_1/Adam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstConst_1Const_2embedding/embeddingsdense/kernel
dense/bias*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_11018
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp$cond_1/Adam/iter/Read/ReadVariableOp&cond_1/Adam/beta_1/Read/ReadVariableOp&cond_1/Adam/beta_2/Read/ReadVariableOp%cond_1/Adam/decay/Read/ReadVariableOp-cond_1/Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp6cond_1/Adam/embedding/embeddings/m/Read/ReadVariableOp.cond_1/Adam/dense/kernel/m/Read/ReadVariableOp,cond_1/Adam/dense/bias/m/Read/ReadVariableOp6cond_1/Adam/embedding/embeddings/v/Read/ReadVariableOp.cond_1/Adam/dense/kernel/v/Read/ReadVariableOp,cond_1/Adam/dense/bias/v/Read/ReadVariableOpConst_6*#
Tin
2			*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_11310
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biascond_1/Adam/itercond_1/Adam/beta_1cond_1/Adam/beta_2cond_1/Adam/decaycond_1/Adam/learning_rateMutableHashTablecurrent_loss_scale
good_stepstotalcounttotal_1count_1"cond_1/Adam/embedding/embeddings/mcond_1/Adam/dense/kernel/mcond_1/Adam/dense/bias/m"cond_1/Adam/embedding/embeddings/vcond_1/Adam/dense/kernel/vcond_1/Adam/dense/bias/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_11383??	
?
*
__inference_<lambda>_11213
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10402

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?	
?
#__inference_signature_wrapper_11018
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_10392o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
C
'__inference_dropout_layer_call_fn_11098

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10480a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
a
B__inference_dropout_layer_call_and_return_conditional_losses_11120

inputs
identity?P
dropout/ConstConst*
_output_shapes
: *
dtype0*
value
B j?ye
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0Y
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value
B j?a?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_embedding_layer_call_and_return_conditional_losses_10469

inputs	*
embedding_lookup_10463:
?N?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_10463inputs*
Tindices0	*)
_class
loc:@embedding_lookup/10463*-
_output_shapes
:???????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/10463*-
_output_shapes
:????????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????y
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:???????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
.
__inference__initializer_11168
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_11093

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?h
?
B__inference_model_1_layer_call_and_return_conditional_losses_10501

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_10470:
?N?
dense_10495:	?
dense_10497:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_10470*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_10469?
global_average_pooling1d/CastCast*embedding/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*-
_output_shapes
:????????????
(global_average_pooling1d/PartitionedCallPartitionedCall!global_average_pooling1d/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10402?
dropout/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10480v

dense/CastCast dropout/PartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/StatefulPartitionedCallStatefulPartitionedCalldense/Cast:y:0dense_10495dense_10497*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10494u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
'__inference_model_1_layer_call_fn_10833

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_10501o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?s
?
 __inference__wrapped_model_10392
input_1W
Smodel_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleX
Tmodel_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	4
0model_1_text_vectorization_string_lookup_equal_y7
3model_1_text_vectorization_string_lookup_selectv2_t	<
(model_1_embedding_embedding_lookup_10374:
?N??
,model_1_dense_matmul_readvariableop_resource:	?;
-model_1_dense_biasadd_readvariableop_resource:
identity??$model_1/dense/BiasAdd/ReadVariableOp?#model_1/dense/MatMul/ReadVariableOp?"model_1/embedding/embedding_lookup?Fmodel_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2g
&model_1/text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
-model_1/text_vectorization/StaticRegexReplaceStaticRegexReplace/model_1/text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
"model_1/text_vectorization/SqueezeSqueeze6model_1/text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????m
,model_1/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
4model_1/text_vectorization/StringSplit/StringSplitV2StringSplitV2+model_1/text_vectorization/Squeeze:output:05model_1/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
:model_1/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
<model_1/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
<model_1/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
4model_1/text_vectorization/StringSplit/strided_sliceStridedSlice>model_1/text_vectorization/StringSplit/StringSplitV2:indices:0Cmodel_1/text_vectorization/StringSplit/strided_slice/stack:output:0Emodel_1/text_vectorization/StringSplit/strided_slice/stack_1:output:0Emodel_1/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
<model_1/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>model_1/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>model_1/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6model_1/text_vectorization/StringSplit/strided_slice_1StridedSlice<model_1/text_vectorization/StringSplit/StringSplitV2:shape:0Emodel_1/text_vectorization/StringSplit/strided_slice_1/stack:output:0Gmodel_1/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Gmodel_1/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
]model_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast=model_1/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
_model_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast?model_1/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
gmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeamodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
gmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
fmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdpmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0pmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
kmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateromodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0tmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
fmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastmmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
emodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxamodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
gmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
emodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2nmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0pmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
emodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuljmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumcmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumcmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0mmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
imodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
jmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountamodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0mmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0rmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
dmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
_model_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumqmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0mmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
hmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
dmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
_model_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2qmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0emodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0mmodel_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Fmodel_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Smodel_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle=model_1/text_vectorization/StringSplit/StringSplitV2:values:0Tmodel_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
.model_1/text_vectorization/string_lookup/EqualEqual=model_1/text_vectorization/StringSplit/StringSplitV2:values:00model_1_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
1model_1/text_vectorization/string_lookup/SelectV2SelectV22model_1/text_vectorization/string_lookup/Equal:z:03model_1_text_vectorization_string_lookup_selectv2_tOmodel_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
1model_1/text_vectorization/string_lookup/IdentityIdentity:model_1/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????y
7model_1/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
/model_1/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
>model_1/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor8model_1/text_vectorization/RaggedToTensor/Const:output:0:model_1/text_vectorization/string_lookup/Identity:output:0@model_1/text_vectorization/RaggedToTensor/default_value:output:0?model_1/text_vectorization/StringSplit/strided_slice_1:output:0=model_1/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
"model_1/embedding/embedding_lookupResourceGather(model_1_embedding_embedding_lookup_10374Gmodel_1/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*;
_class1
/-loc:@model_1/embedding/embedding_lookup/10374*-
_output_shapes
:???????????*
dtype0?
+model_1/embedding/embedding_lookup/IdentityIdentity+model_1/embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@model_1/embedding/embedding_lookup/10374*-
_output_shapes
:????????????
-model_1/embedding/embedding_lookup/Identity_1Identity4model_1/embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
%model_1/global_average_pooling1d/CastCast6model_1/embedding/embedding_lookup/Identity_1:output:0*

DstT0*

SrcT0*-
_output_shapes
:???????????y
7model_1/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
%model_1/global_average_pooling1d/MeanMean)model_1/global_average_pooling1d/Cast:y:0@model_1/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
model_1/dropout/IdentityIdentity.model_1/global_average_pooling1d/Mean:output:0*
T0*(
_output_shapes
:??????????
model_1/dense/CastCast!model_1/dropout/Identity:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
#model_1/dense/MatMul/ReadVariableOpReadVariableOp,model_1_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model_1/dense/MatMulMatMulmodel_1/dense/Cast:y:0+model_1/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
$model_1/dense/BiasAdd/ReadVariableOpReadVariableOp-model_1_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_1/dense/BiasAddBiasAddmodel_1/dense/MatMul:product:0,model_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
model_1/dense/SigmoidSigmoidmodel_1/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitymodel_1/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^model_1/dense/BiasAdd/ReadVariableOp$^model_1/dense/MatMul/ReadVariableOp#^model_1/embedding/embedding_lookupG^model_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2L
$model_1/dense/BiasAdd/ReadVariableOp$model_1/dense/BiasAdd/ReadVariableOp2J
#model_1/dense/MatMul/ReadVariableOp#model_1/dense/MatMul/ReadVariableOp2H
"model_1/embedding/embedding_lookup"model_1/embedding/embedding_lookup2?
Fmodel_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Fmodel_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
a
B__inference_dropout_layer_call_and_return_conditional_losses_10548

inputs
identity?P
dropout/ConstConst*
_output_shapes
: *
dtype0*
value
B j?ye
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0Y
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value
B j?a?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?X
?
!__inference__traced_restore_11383
file_prefix9
%assignvariableop_embedding_embeddings:
?N?2
assignvariableop_1_dense_kernel:	?+
assignvariableop_2_dense_bias:-
#assignvariableop_3_cond_1_adam_iter:	 /
%assignvariableop_4_cond_1_adam_beta_1: /
%assignvariableop_5_cond_1_adam_beta_2: .
$assignvariableop_6_cond_1_adam_decay: 6
,assignvariableop_7_cond_1_adam_learning_rate: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: /
%assignvariableop_8_current_loss_scale: '
assignvariableop_9_good_steps:	 #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: J
6assignvariableop_14_cond_1_adam_embedding_embeddings_m:
?N?A
.assignvariableop_15_cond_1_adam_dense_kernel_m:	?:
,assignvariableop_16_cond_1_adam_dense_bias_m:J
6assignvariableop_17_cond_1_adam_embedding_embeddings_v:
?N?A
.assignvariableop_18_cond_1_adam_dense_kernel_v:	?:
,assignvariableop_19_cond_1_adam_dense_bias_v:
identity_21??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_cond_1_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_cond_1_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp%assignvariableop_5_cond_1_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_cond_1_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp,assignvariableop_7_cond_1_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:8RestoreV2:tensors:9*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 ^

Identity_8IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_current_loss_scaleIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_9IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_good_stepsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp6assignvariableop_14_cond_1_adam_embedding_embeddings_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_cond_1_adam_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp,assignvariableop_16_cond_1_adam_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp6assignvariableop_17_cond_1_adam_embedding_embeddings_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp.assignvariableop_18_cond_1_adam_dense_kernel_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp,assignvariableop_19_cond_1_adam_dense_bias_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_21IdentityIdentity_20:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_21Identity_21:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)	%
#
_class
loc:@MutableHashTable
?q
?
B__inference_model_1_layer_call_and_return_conditional_losses_10997

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	4
 embedding_embedding_lookup_10972:
?N?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_10972?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/10972*-
_output_shapes
:???????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/10972*-
_output_shapes
:????????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
global_average_pooling1d/CastCast.embedding/embedding_lookup/Identity_1:output:0*

DstT0*

SrcT0*-
_output_shapes
:???????????q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMean!global_average_pooling1d/Cast:y:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????X
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
value
B j?y?
dropout/dropout/MulMul&global_average_pooling1d/Mean:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????k
dropout/dropout/ShapeShape&global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0a
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value
B j?a?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????o

dense/CastCastdropout/dropout/Mul_1:z:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0}
dense/MatMulMatMuldense/Cast:y:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_112086
2key_value_init472_lookuptableimportv2_table_handle.
*key_value_init472_lookuptableimportv2_keys0
,key_value_init472_lookuptableimportv2_values	
identity??%key_value_init472/LookupTableImportV2?
%key_value_init472/LookupTableImportV2LookupTableImportV22key_value_init472_lookuptableimportv2_table_handle*key_value_init472_lookuptableimportv2_keys,key_value_init472_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init472/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2N
%key_value_init472/LookupTableImportV2%key_value_init472/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?
T
8__inference_global_average_pooling1d_layer_call_fn_11087

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10402i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?4
?	
__inference__traced_save_11310
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop/
+savev2_cond_1_adam_iter_read_readvariableop	1
-savev2_cond_1_adam_beta_1_read_readvariableop1
-savev2_cond_1_adam_beta_2_read_readvariableop0
,savev2_cond_1_adam_decay_read_readvariableop8
4savev2_cond_1_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	1
-savev2_current_loss_scale_read_readvariableop)
%savev2_good_steps_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopA
=savev2_cond_1_adam_embedding_embeddings_m_read_readvariableop9
5savev2_cond_1_adam_dense_kernel_m_read_readvariableop7
3savev2_cond_1_adam_dense_bias_m_read_readvariableopA
=savev2_cond_1_adam_embedding_embeddings_v_read_readvariableop9
5savev2_cond_1_adam_dense_kernel_v_read_readvariableop7
3savev2_cond_1_adam_dense_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B ?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop+savev2_cond_1_adam_iter_read_readvariableop-savev2_cond_1_adam_beta_1_read_readvariableop-savev2_cond_1_adam_beta_2_read_readvariableop,savev2_cond_1_adam_decay_read_readvariableop4savev2_cond_1_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop=savev2_cond_1_adam_embedding_embeddings_m_read_readvariableop5savev2_cond_1_adam_dense_kernel_m_read_readvariableop3savev2_cond_1_adam_dense_bias_m_read_readvariableop=savev2_cond_1_adam_embedding_embeddings_v_read_readvariableop5savev2_cond_1_adam_dense_kernel_v_read_readvariableop3savev2_cond_1_adam_dense_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *%
dtypes
2			?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes{
y: :
?N?:	?:: : : : : ::: : : : : : :
?N?:	?::
?N?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?N?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
::


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
?N?:%!

_output_shapes
:	?: 

_output_shapes
::&"
 
_output_shapes
:
?N?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?
?
__inference_restore_fn_11200
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?	
?
'__inference_model_1_layer_call_fn_10680
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_10644o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

)__inference_embedding_layer_call_fn_11073

inputs	
unknown:
?N?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_10469u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
'__inference_model_1_layer_call_fn_10518
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_10501o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
@__inference_dense_layer_call_and_return_conditional_losses_10494

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
'__inference_model_1_layer_call_fn_10852

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_10644o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?j
?
B__inference_model_1_layer_call_and_return_conditional_losses_10921

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	4
 embedding_embedding_lookup_10903:
?N?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_10903?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/10903*-
_output_shapes
:???????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/10903*-
_output_shapes
:????????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
global_average_pooling1d/CastCast.embedding/embedding_lookup/Identity_1:output:0*

DstT0*

SrcT0*-
_output_shapes
:???????????q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMean!global_average_pooling1d/Cast:y:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????w
dropout/IdentityIdentity&global_average_pooling1d/Mean:output:0*
T0*(
_output_shapes
:??????????o

dense/CastCastdropout/Identity:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0}
dense/MatMulMatMuldense/Cast:y:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_10480

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?h
?
B__inference_model_1_layer_call_and_return_conditional_losses_10744
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_10731:
?N?
dense_10738:	?
dense_10740:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2_
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_10731*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_10469?
global_average_pooling1d/CastCast*embedding/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*-
_output_shapes
:????????????
(global_average_pooling1d/PartitionedCallPartitionedCall!global_average_pooling1d/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10402?
dropout/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10480v

dense/CastCast dropout/PartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/StatefulPartitionedCallStatefulPartitionedCalldense/Cast:y:0dense_10738dense_10740*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10494u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?C
?
__inference_adapt_step_11066
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:?????????*"
output_shapes
:?????????*
output_types
2]
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_11108

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference__initializer_111536
2key_value_init472_lookuptableimportv2_table_handle.
*key_value_init472_lookuptableimportv2_keys0
,key_value_init472_lookuptableimportv2_values	
identity??%key_value_init472/LookupTableImportV2?
%key_value_init472/LookupTableImportV2LookupTableImportV22key_value_init472_lookuptableimportv2_table_handle*key_value_init472_lookuptableimportv2_keys,key_value_init472_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init472/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2N
%key_value_init472/LookupTableImportV2%key_value_init472/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?
F
__inference__creator_11163
identity: ??MutableHashTable}
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_23*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?

?
@__inference_dense_layer_call_and_return_conditional_losses_11140

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
,
__inference__destroyer_11158
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
D__inference_embedding_layer_call_and_return_conditional_losses_11082

inputs	*
embedding_lookup_11076:
?N?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_11076inputs*
Tindices0	*)
_class
loc:@embedding_lookup/11076*-
_output_shapes
:???????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/11076*-
_output_shapes
:????????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????y
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:???????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_11129

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10494o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?i
?
B__inference_model_1_layer_call_and_return_conditional_losses_10644

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_10631:
?N?
dense_10638:	?
dense_10640:
identity??dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_10631*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_10469?
global_average_pooling1d/CastCast*embedding/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*-
_output_shapes
:????????????
(global_average_pooling1d/PartitionedCallPartitionedCall!global_average_pooling1d/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10402?
dropout/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10548~

dense/CastCast(dropout/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/StatefulPartitionedCallStatefulPartitionedCalldense/Cast:y:0dense_10638dense_10640*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10494u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?i
?
B__inference_model_1_layer_call_and_return_conditional_losses_10808
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	#
embedding_10795:
?N?
dense_10802:	?
dense_10804:
identity??dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2_
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_10795*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_10469?
global_average_pooling1d/CastCast*embedding/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*-
_output_shapes
:????????????
(global_average_pooling1d/PartitionedCallPartitionedCall!global_average_pooling1d/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10402?
dropout/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10548~

dense/CastCast(dropout/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
dense/StatefulPartitionedCallStatefulPartitionedCalldense/Cast:y:0dense_10802dense_10804*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10494u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
:
__inference__creator_11145
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name473*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
,
__inference__destroyer_11173
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
`
'__inference_dropout_layer_call_fn_11103

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10548p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_save_fn_11192
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????;
dense2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:?v
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
P
_lookup_layer
	keras_api
_adapt_function"
_tf_keras_layer
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$_random_generator
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
?
/
loss_scale
0base_optimizer
1iter

2beta_1

3beta_2
	4decay
5learning_ratemg'mh(mivj'vk(vl"
	optimizer
5
1
'2
(3"
trackable_list_wrapper
5
0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_model_1_layer_call_fn_10518
'__inference_model_1_layer_call_fn_10833
'__inference_model_1_layer_call_fn_10852
'__inference_model_1_layer_call_fn_10680?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_model_1_layer_call_and_return_conditional_losses_10921
B__inference_model_1_layer_call_and_return_conditional_losses_10997
B__inference_model_1_layer_call_and_return_conditional_losses_10744
B__inference_model_1_layer_call_and_return_conditional_losses_10808?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_10392input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
;serving_default"
signature_map
L
<lookup_table
=token_counts
>	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_11066?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
(:&
?N?2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_embedding_layer_call_fn_11073?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_11082?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
8__inference_global_average_pooling1d_layer_call_fn_11087?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_11093?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
 	variables
!trainable_variables
"regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
'__inference_dropout_layer_call_fn_11098
'__inference_dropout_layer_call_fn_11103?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dropout_layer_call_and_return_conditional_losses_11108
B__inference_dropout_layer_call_and_return_conditional_losses_11120?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	?2dense/kernel
:2
dense/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_dense_layer_call_fn_11129?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_11140?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
F
Scurrent_loss_scale
T
good_steps"
_generic_user_object
"
_generic_user_object
:	 (2cond_1/Adam/iter
: (2cond_1/Adam/beta_1
: (2cond_1/Adam/beta_2
: (2cond_1/Adam/decay
#:! (2cond_1/Adam/learning_rate
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_11018input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
j
W_initializer
X_create_resource
Y_initialize
Z_destroy_resourceR jCustom.StaticHashTable
O
[_create_resource
\_initialize
]_destroy_resourceR Z
tablemn
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
: 2current_loss_scale
:	 2
good_steps
N
	^total
	_count
`	variables
a	keras_api"
_tf_keras_metric
^
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api"
_tf_keras_metric
"
_generic_user_object
?2?
__inference__creator_11145?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_11153?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_11158?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_11163?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_11168?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_11173?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
:  (2total
:  (2count
.
^0
_1"
trackable_list_wrapper
-
`	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
b0
c1"
trackable_list_wrapper
-
e	variables"
_generic_user_object
4:2
?N?2"cond_1/Adam/embedding/embeddings/m
+:)	?2cond_1/Adam/dense/kernel/m
$:"2cond_1/Adam/dense/bias/m
4:2
?N?2"cond_1/Adam/embedding/embeddings/v
+:)	?2cond_1/Adam/dense/kernel/v
$:"2cond_1/Adam/dense/bias/v
?B?
__inference_save_fn_11192checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_11200restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_56
__inference__creator_11145?

? 
? "? 6
__inference__creator_11163?

? 
? "? 8
__inference__destroyer_11158?

? 
? "? 8
__inference__destroyer_11173?

? 
? "? ?
__inference__initializer_11153<st?

? 
? "? :
__inference__initializer_11168?

? 
? "? ?
 __inference__wrapped_model_10392j<opq'(0?-
&?#
!?
input_1?????????
? "-?*
(
dense?
dense?????????i
__inference_adapt_step_11066I=r??<
5?2
0?-?
??????????IteratorSpec 
? "
 ?
@__inference_dense_layer_call_and_return_conditional_losses_11140]'(0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? y
%__inference_dense_layer_call_fn_11129P'(0?-
&?#
!?
inputs??????????
? "???????????
B__inference_dropout_layer_call_and_return_conditional_losses_11108^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_11120^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? |
'__inference_dropout_layer_call_fn_11098Q4?1
*?'
!?
inputs??????????
p 
? "???????????|
'__inference_dropout_layer_call_fn_11103Q4?1
*?'
!?
inputs??????????
p
? "????????????
D__inference_embedding_layer_call_and_return_conditional_losses_11082b0?-
&?#
!?
inputs??????????	
? "+?(
!?
0???????????
? ?
)__inference_embedding_layer_call_fn_11073U0?-
&?#
!?
inputs??????????	
? "?????????????
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_11093{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
8__inference_global_average_pooling1d_layer_call_fn_11087nI?F
??<
6?3
inputs'???????????????????????????

 
? "!????????????????????
B__inference_model_1_layer_call_and_return_conditional_losses_10744j<opq'(8?5
.?+
!?
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_10808j<opq'(8?5
.?+
!?
input_1?????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_10921i<opq'(7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_10997i<opq'(7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
'__inference_model_1_layer_call_fn_10518]<opq'(8?5
.?+
!?
input_1?????????
p 

 
? "???????????
'__inference_model_1_layer_call_fn_10680]<opq'(8?5
.?+
!?
input_1?????????
p

 
? "???????????
'__inference_model_1_layer_call_fn_10833\<opq'(7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
'__inference_model_1_layer_call_fn_10852\<opq'(7?4
-?*
 ?
inputs?????????
p

 
? "??????????y
__inference_restore_fn_11200Y=K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_11192?=&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
#__inference_signature_wrapper_11018u<opq'(;?8
? 
1?.
,
input_1!?
input_1?????????"-?*
(
dense?
dense?????????