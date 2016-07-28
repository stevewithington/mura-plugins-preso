component accessors=true extends='mura.plugin.pluginGenericEventHandler' output=false {

	property name='m' hint='mura scope';

	public any function onApplicationLoad(required struct m) {
		// Register all event handlers/listeners of this .cfc with Mura CMS
		variables.pluginConfig.addEventHandler(this);
		setm(arguments.m);
	}

	public any function onPageDefaultBodyRender(required struct m) {
		// Dynamically alter the 'Title' of the page
		m.content('title', 'Hijacked!');
		// Override the output of the main body area of Page / Default
		return '<h3>#m.content('title')#</h3>' & m.content('body');
	}

	// You could place any other event handlers/listeners here

}

