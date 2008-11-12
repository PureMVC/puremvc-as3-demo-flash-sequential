/*
 PureMVC MultiCore Demo for AS3 - Sequential
 Copyright(c) 2008 Duncan Hall <duncan.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
*/
package org.puremvc.as3.multicore.demos.sequential.controller 
{
	import org.puremvc.as3.multicore.patterns.command.AsyncMacroCommand;	

	public class ExampleAsyncMacroCommand extends AsyncMacroCommand
	{
		/** 
		 * Execute the SubCommands.
		 */
		override protected function initializeAsyncMacroCommand () : void
		{
			addSubCommand( FirstAsyncCommand );
			addSubCommand( SecondAsyncCommand );
			addSubCommand( ExampleSimpleCommand );
			addSubCommand( ThirdAsyncCommand );
			addSubCommand( ExampleSimpleCommand );
		}
		
	}
}
