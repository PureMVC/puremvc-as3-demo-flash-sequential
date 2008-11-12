/*
 PureMVC Demo for AS3 - Sequential
 Copyright(c) 2008 Duncan Hall <duncan.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
*/
package org.puremvc.as3.demos.sequential.controller 
{
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	import org.puremvc.as3.demos.sequential.view.ApplicationMediator;

	public class StartupCommand extends SimpleCommand
	{
		/**
		 * Execute the business logic.
		 */
		override public function execute ( note:INotification ) : void
		{
			var app:Sequential = note.getBody() as Sequential;
			facade.registerMediator( new ApplicationMediator( app ) );
		}
	}
}
