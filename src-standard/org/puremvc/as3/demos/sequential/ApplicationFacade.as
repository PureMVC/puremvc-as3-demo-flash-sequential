/*
 PureMVC Demo for AS3 - Sequential
 Copyright(c) 2008 Duncan Hall <duncan.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
*/
package org.puremvc.as3.demos.sequential 
{
	import org.puremvc.as3.patterns.facade.Facade;	
	import org.puremvc.as3.demos.sequential.controller.StartupCommand;
	import org.puremvc.as3.demos.sequential.controller.ExampleAsyncMacroCommand;

	public class ApplicationFacade extends Facade
	{
	 	public static const STARTUP				:String	= "startup";
	 	public static const LOG_OUTPUT			:String	= "logOutput";
	 	public static const BEGIN_ASYNC_COMMANDS:String	= "beginAsync";
	 
		public static function getInstance() : ApplicationFacade 
		{
			if (instance == null) instance = new ApplicationFacade();
			return instance as ApplicationFacade;
		}
	
		public function startup ( app:Sequential ) : void
		{
			sendNotification( STARTUP, app );
		}
	
		override protected function initializeController () : void
		{
			super.initializeController();
			registerCommand( STARTUP, StartupCommand );	
			registerCommand( BEGIN_ASYNC_COMMANDS, ExampleAsyncMacroCommand );	
		}
	}
}