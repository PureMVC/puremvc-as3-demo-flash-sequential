/*
 PureMVC Demo for AS3 - Sequential
 Copyright(c) 2008 Duncan Hall <duncan.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
*/
package org.puremvc.as3.demos.sequential.view
{
	import org.puremvc.as3.patterns.mediator.Mediator;	
	import org.puremvc.as3.demos.sequential.view.components.OutputComponent;

	public class ApplicationMediator extends Mediator
	{
		public static const NAME:String	= "ApplicationMediator";
	 
		public function ApplicationMediator( viewComponent:Sequential ) 
		{
			super( NAME, viewComponent );
		}
	
		override public function onRegister( ):void
		{
			var output:OutputComponent = new OutputComponent();
			facade.registerMediator( new OutputMediator( output ) );
			app.outputComponent = output;
		}
	
		public function get app ():Sequential
		{ 
			return viewComponent as Sequential; 
		}
	}
}