#!/bin/bash
# Copyright 2018 The Code Department
# 
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.

# Get home
cd ..
export UNIFY_HOME=$PWD

# For now always set startup operation "install"
# In future should be able to pass it as batch file argument
START_OPERATION=install

# For now always set working folder to UNIFY_HOME
# In future should be able to pass it as batch file argument
WORKING_FOLDER=$UNIFY_HOME

# Start instance
exec java -Xmx128m -Xms128m -cp "$UNIFY_HOME/lib/*" com.tcdng.unify.core.Unify $START_OPERATION -w $WORKING_FOLDER &

