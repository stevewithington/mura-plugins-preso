component accessors=true extends='mura.plugin.pluginGenericEventHandler' output=false {

	property name='m' hint='mura scope';

	public any function onApplicationLoad(required struct m) {
		variables.pluginConfig.registerDisplayObjectDir(dir='display_objects');

		// Register all event handlers/listeners of this .cfc with Mura CMS
		variables.pluginConfig.addEventHandler(this);
		setm(arguments.m);
	}

	// You could place any other event handlers/listeners here

}

