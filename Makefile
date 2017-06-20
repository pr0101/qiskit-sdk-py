# Copyright 2017 IBM RESEARCH. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# =============================================================================

# Authors: Ismael Faro <Ismael.Faro1@ibm.com>
#					 Jesus Perez <jesusper@us.ibm.com>


.PHONY: env env-dev lint test run

# Dependencies need to be installed on the Anaconda virtual environment.
env:
	conda create -y -n QISKitenv python=3
	bash -c "source activate QISKitenv;make env"

run:
	bash -c "source activate QISKitenv;cd tutorial;jupyter notebook"


# Ignoring generated ones with .py extension.
lint:
	pylint --ignore=./qiskit/qasm/parsetab.py examples qiskit test tutorial"

# TODO: RUN WITH THE NATIVE TOOL INSTEAD.

# TODO: Uncomment when the lint one passes.
# test: lint
test:
	python3 test/test.py
