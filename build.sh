#!/bin/bash

rm sconstruct
cp sconstruct.c600 sconstruct
scons -c
scons

