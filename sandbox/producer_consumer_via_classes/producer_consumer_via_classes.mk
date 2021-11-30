##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=producer_consumer_via_classes
ConfigurationName      :=Debug
WorkspacePath          :=/home/jignesh/cpp_course/sandbox
ProjectPath            :=/home/jignesh/cpp_course/sandbox/producer_consumer_via_classes
IntermediateDirectory  :=$(ConfigurationName)
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Jignesh
Date                   :=30/11/21
CodeLitePath           :=/home/jignesh/.codelite
LinkerName             :=/usr/bin/g++-9
SharedObjectLinkerName :=/usr/bin/g++-9 -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="producer_consumer_via_classes.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)stdc++ $(LibrarySwitch)pthread 
ArLibs                 :=  "stdc++" "pthread" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++-9
CC       := /usr/bin/gcc-9
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/Thread.cpp$(ObjectSuffix) $(IntermediateDirectory)/Consumer.cpp$(ObjectSuffix) $(IntermediateDirectory)/Producer.cpp$(ObjectSuffix) $(IntermediateDirectory)/Mutex.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d $(ConfigurationName) || $(MakeDirCommand) $(ConfigurationName)


$(IntermediateDirectory)/.d:
	@test -d $(ConfigurationName) || $(MakeDirCommand) $(ConfigurationName)

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/Thread.cpp$(ObjectSuffix): Thread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Thread.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Thread.cpp$(DependSuffix) -MM Thread.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jignesh/cpp_course/sandbox/producer_consumer_via_classes/Thread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Thread.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Thread.cpp$(PreprocessSuffix): Thread.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Thread.cpp$(PreprocessSuffix) Thread.cpp

$(IntermediateDirectory)/Consumer.cpp$(ObjectSuffix): Consumer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Consumer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Consumer.cpp$(DependSuffix) -MM Consumer.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jignesh/cpp_course/sandbox/producer_consumer_via_classes/Consumer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Consumer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Consumer.cpp$(PreprocessSuffix): Consumer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Consumer.cpp$(PreprocessSuffix) Consumer.cpp

$(IntermediateDirectory)/Producer.cpp$(ObjectSuffix): Producer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Producer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Producer.cpp$(DependSuffix) -MM Producer.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jignesh/cpp_course/sandbox/producer_consumer_via_classes/Producer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Producer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Producer.cpp$(PreprocessSuffix): Producer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Producer.cpp$(PreprocessSuffix) Producer.cpp

$(IntermediateDirectory)/Mutex.cpp$(ObjectSuffix): Mutex.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Mutex.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Mutex.cpp$(DependSuffix) -MM Mutex.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jignesh/cpp_course/sandbox/producer_consumer_via_classes/Mutex.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Mutex.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Mutex.cpp$(PreprocessSuffix): Mutex.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Mutex.cpp$(PreprocessSuffix) Mutex.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jignesh/cpp_course/sandbox/producer_consumer_via_classes/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


