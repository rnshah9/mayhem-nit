# This file is part of NIT ( http://www.nitlanguage.org ).
#
# Copyright 2004-2008 Jean Privat <jean@pryen.org>
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

import end

interface Object
end

enum Int
	fun output is intern
	fun +(o: Int): Int is intern
end

class Foo
	var a1: Int
	var a2: Int
	fun run
	do
		_a1.output
		_a2.output
	end

	fun run_other(o: Foo)
	do
		o._a1.output
		o._a2.output
	end

	init
	do
		#alt1#run
		_a1 = 1
		#alt2#run
		_a2 = _a1 + 1
	end

	init nop do end
end

class Bar
	super Foo
	var a3: Int
	redef fun run
	do
		_a1.output
		_a2.output
		_a3.output
	end

	init
	do
		nop
		#alt3#run
		_a1 = 10
		#alt4#run_other(self)
		_a2 = 20
		#alt5#run
		_a3 = 30
	end
end

var f = new Foo
var b = new Bar
f.run
b.run
