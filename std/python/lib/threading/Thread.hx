/*
 * Copyright (C)2005-2016 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */
package python.lib.threading;

private typedef Callable = Dynamic->Dynamic;

@:pythonImport("threading", "Thread")
extern class Thread {
	public var name:Null<String>;
	public var ident(default, null):Null<Int>;
	@:native("is_alive") public var isAlive(default, null):Bool;
	public var daemon:Bool;

	public function new(?group:Dynamic, ?target:Callable, ?name:String, ?args:Tuple<Dynamic>, ?kwargs:Map<String, Dynamic>, ?daemon:Bool);
	public function start():Void;
	public function run():Void;
	public function join(?timeout:Int):Void;
	public function isDaemon():Bool;
	public function setDaemon(daemonic:Bool):Void;
	public function getName():Null<String>;
	public function setName(name:String):Void;
}
