##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=casting
ConfigurationName      :=Debug
WorkspacePath          :=/home/jignesh/cpp_course/sandbox
ProjectPath            :=/home/jignesh/cpp_course/sandbox/casting
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
ObjectsFileList        :="casting.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
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
Objects0=$(IntermediateDirectory)/const_cast.cpp$(ObjectSuffix) $(IntermediateDirectory)/static_cast.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/const_cast.cpp$(ObjectSuffix): const_cast.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/const_cast.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/const_cast.cpp$(DependSuffix) -MM const_cast.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jignesh/cpp_course/sandbox/casting/const_cast.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/const_cast.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/const_cast.cpp$(PreprocessSuffix): const_cast.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/const_cast.cpp$(PreprocessSuffix) const_cast.cpp

$(IntermediateDirectory)/static_cast.cpp$(ObjectSuffix): static_cast.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/static_cast.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/static_cast.cpp$(DependSuffix) -MM static_cast.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jignesh/cpp_course/sandbox/casting/static_cast.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/static_cast.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/static_cast.cpp$(PreprocessSuffix): static_cast.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/static_cast.cpp$(PreprocessSuffix) static_cast.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


