/*
 PureMVC MultiCore Demo for AS3 - Sequential
 Copyright(c) 2008 Duncan Hall <duncan.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
*/
package org.puremvc.as3.multicore.demos.sequential.controller 
{
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
	import org.puremvc.as3.multicore.demos.sequential.ApplicationFacade;

	public class ExampleSimpleCommand extends SimpleCommand
	{
		/** 
		 * Execute the business logic.
		 */
		override public function execute ( note:INotification ) : void
		{
			var logMessage:String = "SIMPLE (SYNCHRONOUS) COMMAND COMPLETE"; 
			sendNotification( ApplicationFacade.LOG_OUTPUT, logMessage );
		}
	}
}
