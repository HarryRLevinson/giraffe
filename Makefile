CXX=g++
CXXFLAGS_COMMON=-Wall -Wimplicit-fallthrough -g -Winline -std=gnu++11 -march=native -I.
CXXFLAGS_RELEASE=$(CXXFLAGS_COMMON) -O3 -flto
#CXXFLAGS_PROFILE=$(CXXFLAGS_COMMON) -pg -Wno-inline -O3 -fno-inline -fno-inline-small-functions -fno-inline-functions
CXXFLAGS_PROFILE=$(CXXFLAGS_COMMON) -pg -O3 
CXXFLAGS_DEBUG=$(CXXFLAGS_COMMON)  -DDEBUG 

all:
	$(CXX) $(CXXFLAGS_RELEASE) giraffe.cpp -o giraffe

debug:
	$(CXX) $(CXXFLAGS_DEBUG) giraffe.cpp -o giraffe

profile:
	$(CXX) $(CXXFLAGS_PROFILE) giraffe.cpp -o giraffe