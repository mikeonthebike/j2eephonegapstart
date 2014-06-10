jQuery("document").ready(function(){
	new imagesRouter();
	Backbone.history.start();
});

var imagesRouter = Backbone.Router.extend({
	initialize: function(){
		jQuery("#searchForm").submit(jQuery.proxy(this.triggersearch,this));
	},
	triggersearch:function(){
		this.navigate("searchResults/" + jQuery("#searchterm").val(), {trigger: true});
		return false;	
	},
	aArtists: [],
	// fTemplateList: _.template(jQuery("#artistListTemplate").html()),
	nArtist: 0,
	renderArtists: function(aArtists){
		this.aArtists = aArtists;		
		this.getimages(this.nArtist);
		
	},
	fimagestemplate: _.template(jQuery("#imagestemplate").html()),
	renderimages: function(aImages){
		jQuery("#imageslide").html("");
		for(var i = 0; i < aImages.length; i++){
			var oImages = aImages[i];
			oImages.id = i;
			jQuery("#imageslide").append(this.fimagestemplate(oImages));
		}
	},
	routes:{
		"images/(:idArtists)":"getimages",
		"searchResults/:q": "doSearch",
		"*path":"getArtists"
	},
	getimages: function(idArtists){
		if(0 == this.aArtists.length || 
				idArtists > this.aArtists.length ){
			this.nArtist = idArtists;
			this.getArtists();
			
		}
 		else {

			var oArtist = this.aArtists[idArtists];
			this.showDetails(idArtists);
			jQuery.ajax({
				url : "images.jsp?sId=" + oArtist.idArtists,
				dataType : "json"
			}).done(jQuery.proxy(this.renderimages, this)).fail(function(err) {
				console.log(err);
			});
		}
	},
	fTemplateDetails: _.template(jQuery("#artistDetailsTemplate").html()),
	showDetails: function(i){
		if(i == null) i = 0;
		jQuery("#artistDetails").html(this.fTemplateDetails(this.aArtists[i]));		
	},
	doSearch:function(q){
		jQuery.ajax({url: "searchResults.jsp?q=" + q,  dataType:"json"})
		.done(jQuery.proxy(this.renderArtists,this))
		.fail(function(err){console.log(err)});
	},
	getArtists: function(){
		jQuery.ajax({url: "artists.jsp"}).
		done(jQuery.proxy(this.renderArtists, this)).
		fail(function(err){console.log(err);});
	}
});
