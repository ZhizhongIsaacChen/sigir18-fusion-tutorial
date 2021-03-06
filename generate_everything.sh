#!/bin/bash
CDIR=`pwd`
./create_tools.sh
if [ $? -ne 0 ];
then
  echo "Compile tools failed. Exiting."
  exit 1
fi
cd $CDIR
cd experiments/additivity
./additivity_test.sh
if [ $? -ne 0 ];
then
  echo "Additivity test failed. Exiting."
  exit 1
fi
cd $CDIR
cd experiments/unexp
./negative_test.sh
if [ $? -ne 0 ];
then
  echo "Exp test failed. Exiting."
  exit 1
fi
cd $CDIR
cd experiments/uqv
./uqv_test.sh
if [ $? -ne 0 ];
then
  echo "UQV test failed. Exiting."
  exit 1
fi
cd $CDIR
cd experiments/risk
./test_risk.sh
if [ $? -ne 0 ];
then
  echo "Risk test failed. Exiting."
  exit 1
fi
cd $CDIR
