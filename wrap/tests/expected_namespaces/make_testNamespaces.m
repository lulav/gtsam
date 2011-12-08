% automatically generated by wrap on 2011-Dec-08
echo on

toolboxpath = mfilename('fullpath');
delims = find(toolboxpath == '/');
toolboxpath = toolboxpath(1:(delims(end)-1));
clear delims
addpath(toolboxpath);

%% ns1ClassA
cd(toolboxpath)
mex -O5 new_ns1ClassA_.cpp

cd @ns1ClassA

%% ns1ClassB
cd(toolboxpath)
mex -O5 new_ns1ClassB_.cpp

cd @ns1ClassB

%% ns2ClassA
cd(toolboxpath)
mex -O5 new_ns2ClassA_.cpp
mex -O5 ns2ClassA_afunction.cpp

cd @ns2ClassA
mex -O5 memberFunction.cpp
mex -O5 nsArg.cpp

%% ns2ns3ClassB
cd(toolboxpath)
mex -O5 new_ns2ns3ClassB_.cpp

cd @ns2ns3ClassB

%% ns2ClassC
cd(toolboxpath)
mex -O5 new_ns2ClassC_.cpp

cd @ns2ClassC

%% ClassD
cd(toolboxpath)
mex -O5 new_ClassD_.cpp

cd @ClassD

cd(toolboxpath)

echo off
