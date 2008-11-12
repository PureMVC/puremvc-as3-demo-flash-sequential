/*
 PureMVC Demo for AS3 - Sequential
 Copyright(c) 2008 Duncan Hall <duncan.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
*/
package org.puremvc.as3.demos.sequential.controller 
{
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.AsyncCommand;	
	import org.puremvc.as3.demos.sequential.ApplicationFacade;

	public class FirstAsyncCommand extends AsyncCommand
	{
		/** 
		 * Execute the business logic.
		 * <P>
		 * Starts a timer which calls <code>onTimer</code> when complete.
		 */
		override public function execute ( note:INotification ) : void
		{
			var timer:Timer = new Timer( 5000, 1 );
				timer.addEventListener( TimerEvent.TIMER, onTimer );
			var logMessage:String = "STARTING FIRST ASYNC COMMAND...";
			sendNotification( ApplicationFacade.LOG_OUTPUT, logMessage );
			timer.start();
		}
		
		/**
		 * Handle Timer event.
		 * <P>
		 * Resets timer and removes listener, sends a notification
		 * with a log message and finally, notifies any 
		 * AsyncMacroCommand that may have invoked it that this
		 * AsyncCommand is complete.
		 */ 
		private function onTimer( event:TimerEvent ) : void 
		{	
			var t:Timer = event.currentTarget as Timer;
				t.reset();
				t.removeEventListener( TimerEvent.TIMER, onTimer );
				t = null;
			
			var logMessage:String = "FIRST ASYNC COMMAND COMPLETE";
			sendNotification( ApplicationFacade.LOG_OUTPUT, logMessage );
			commandComplete();  
		}
	}
}
