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

if [ -z "$UNIFY_HOME" ]; then
  cd ..
  UNIFY_HOME=$PWD
fi

# Shutdown instance
exec java -cp "$UNIFY_HOME/lib/*" com.tcdng.unify.core.Unify shutdown -h localhost -p 8081 &

