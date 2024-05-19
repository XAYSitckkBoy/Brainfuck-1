<div class="wrap">
<div class="cal">
  <ul class="ctrls">
  	<li class="close"><a href="#"></a></li>
		<li class="min"><a href="#"></a></li>
		<li class="max"><a href="#"></a></li>
	</ul>
	<span class="title">Calculator</span>
	<div class="screen">2+2</div>
	<input type="hidden" class="outcome" value="2+2" />
	<ul class="buttons">
		<li><a class="clear">C</a></li>
		<li><a class="val" href="-">&plusmn;</a></li>
		<li><a class="val" href="/">&divide;</a></li>
		<li><a class="val" href="*">&times;</a></li>
		<li><a class="val" href="7">7</a></li>
		<li><a class="val" href="8">8</a></li>
		<li><a class="val" href="9">9</a></li>
		<li><a class="val" href="-">-</a></li>
		<li><a class="val" href="4">4</a></li>
		<li><a class="val" href="5">5</a></li>
		<li><a class="val" href="6">6</a></li>
		<li><a class="val" href="+">+</a></li>
		<li><a class="val" href="1">1</a></li>
		<li><a class="val" href="2">2</a></li>
		<li><a class="val" href="3">3</a></li>
		<li><a class="equal tall">=</a></li>
		<li><a class="val wide shift" href="0">0</a></li>
		<li><a class="val shift" href=".">.</a></li>
	</ul>
</div>




<p>I saw <a href="http://forrst.com/posts/Dark_Calculator_Mac_App-aff">this post</a> on <a href="http://forrst.com">Forrst</a> and figured I would give it a go!</a> 
  Follow me on <a href="https://www.twitter.com/atmattb">Twitter</a>, and let me know what you think. <a href="https://mattboldt.com/demos/calculator/">Original Source</a></p>

</div>
ody{
	background-image: -moz-linear-gradient(top, #137cbc 0%, #30a3d3 25%, #4ba4be 35%, #4094a1 40%, #c2c7aa 50%, #beaa79 100%);
		background-image: -webkit-linear-gradient(top, #137cbc 0%, #30a3d3 25%, #4ba4be 35%, #4094a1 40%, #c2c7aa 50%, #beaa79 100%);
			  background-image: linear-gradient(top, #137cbc 0%, #30a3d3 25%, #4ba4be 35%, #4094a1 40%, #c2c7aa 50%, #beaa79 100%);
	  background-attachment: fixed;
	  background-repeat: no-repeat;
	  color:#c0c0c0;
	  font-family: "Helvetica Neue", Arial, sans-serif;
	  font-weight: 300;
	  font-size:100%;
	  letter-spacing: 1.2px;
  }
  .wrap{
	  width:480px;
	  margin:50px auto 0;
  }
  .cal{
	  width:480px;
	  height:auto;
	  padding:10px 0;
	  margin: auto;
	  background:#232323;
	  border:#000 1px solid;
	  border-radius:7px;
	  -webkit-border-radius:7px;
	  -moz-border-radius:7px;
	  box-shadow:rgba(0,0,0,0.4) 0px 2px 5px, inset rgba(255,255,255,0.9) 0px 1px 1px -1px;
	  -webkit-box-shadow:rgba(0,0,0,0.4) 0px 2px 5px, inset rgba(255,255,255,0.9) 0px 1px 1px -1px;
	  -moz-box-shadow:rgba(0,0,0,0.4) 0px 2px 5px, inset rgba(255,255,255,0.9) 0px 1px 1px -1px;
	  background-image:-moz-linear-gradient(top, #333333, #1f1f1f);
		  background-image:-webkit-linear-gradient(top, #333333, #1f1f1f);
			  background-image:linear-gradient(top, #333333, #1f1f1f);
	  overflow: hidden;
	  text-align: center;
  }
  .screen{
	  width:424px;
	  height:93px;
	  margin: 12px auto 30px;
	  padding:15px 20px;
	  color:#c0c0c0;
	  text-align: right;
	  font-size: 3em;
	  letter-spacing: 3px;
	  overflow:hidden;
	  border:#000 1px solid;
	  border-radius:7px;
	  -webkit-border-radius:7px;
	  -moz-border-radius:7px;
	  box-shadow:inset rgba(0,0,0,1) 0px 1px 4px, inset rgba(225,225,225,0.3) 0px -2px 4px -2px;
	  -webkit-box-shadow:inset rgba(0,0,0,1) 0px 1px 4px, inset rgba(225,225,225,0.3) 0px -2px 4px -2px;
	  -moz-box-shadow:inset rgba(0,0,0,1) 0px 1px 4px, inset rgba(225,225,225,0.3) 0px -2px 4px -2px;
	  background-image: -moz-linear-gradient(top, #3e3e3e 0%, #303030 100%);
		  background-image: -webkit-linear-gradient(top, #3e3e3e 0%, #303030 100%);
			  background-image: linear-gradient(top, #3e3e3e 0%, #303030 100%);
	  -moz-box-sizing:border-box;
	  -webkit-box-sizing:border-box;
	  box-sizing:border-box;
  }
  .title{
	  font-size: 1.2em;
  }
  .buttons{
	  padding:0;
	  width:423px;
	  margin:auto;
	  overflow: hidden;
	  list-style: none;
  }
  .buttons li{
	  display:inline;
	  float:left;
	  padding:0px;
	  margin-right:13px;
	  margin-bottom:10px;
  }
  /* remove margin-right on every fourth button */
  .buttons li:nth-child(4n){
	  margin-right:0;
  }
  .buttons a{
	  display:block;
	  width:95px;
	  height:68px;
	  padding:18px 0 12px;
	  color:#c0c0c0;
	  font-family: "Myriad Pro", Arial, sans-serif;
	  font-size:1.6em;
	  font-weight: 500;
	  letter-spacing: -2px;
	  background-color:#2f2f2f;
	  border: #000 1px solid;
	  border-radius:5px;
	  -webkit-border-radius:5px;
	  -moz-border-radius:5px;
	  text-align: center;
	  text-decoration: none;
	  text-shadow:#000 0px -1px 0px;
	  box-shadow: inset rgba(255,255,255,0.1) 0px 1px 0px, inset rgba(0,0,0,0.2) 0px -2px 2px;
	  -webkit-box-shadow: inset rgba(255,255,255,0.1) 0px 1px 0px, inset rgba(0,0,0,0.2) 0px -2px 2px;
	  -moz-box-shadow: inset rgba(255,255,255,0.1) 0px 1px 0px, inset rgba(0,0,0,0.2) 0px -2px 2px;
	  background-image:-moz-linear-gradient(top, #363636 0%, #313234 40%, #2f2f2f 100%);
		  background-image:-webkit-linear-gradient(top, #363636 0%, #313234 40%, #2f2f2f 100%);
			  background-image:linear-gradient(top, #363636 0%, #313234 40%, #2f2f2f 100%);
	  -moz-box-sizing:border-box;
	  -webkit-box-sizing:border-box;
	  box-sizing:border-box;
	  cursor: pointer;
  }
  .buttons a:active{
	  box-shadow: inset rgba(0,0,0,0.5) 0px 2px 8px;
	  background-image:-moz-linear-gradient(top, #2f2f2f 0%, #363636 100%);
		  background-image:-webkit-linear-gradient(top, #2f2f2f 0%, #363636 100%);
			  background-image:linear-gradient(top, #2f2f2f 0%, #363636 100%);
  }
  /* tall = button */
  .tall{height:151px !important;}
  /* Wide 0 */
  .wide{width:205px !important;}
  /* shift last row up, because the tall button pushes it down */
  .shift{margin-top:-78px;}
  
  
  /* close, min, max buttons */
  .ctrls{
	  list-style: none;
	  margin:5px 0 0 20px;
	  padding:0;
	  position: absolute;
  }
  .ctrls li{
	  float:left;
	  display:inline;
  }
  .ctrls li a{
	  display: block;
	  width:18px;
	  height:18px;
	  margin-right:10px;
	  border-radius:100%;
	  box-shadow:rgba(255,255,255,0.3) 0px 0px 1px, inset rgba(0,0,0,1) 0px 1px 2px 1px;
	  background-image: -moz-radial-gradient( 9px -4px, #FFF 0px, #fff 2px, rgba(255,255,255,0) 4px), -moz-linear-gradient(bottom, rgba(255,255,255,0.5) 0%, rgba(255,255,255,0) 100%);
	  background-image: -webkit-radial-gradient( 9px -4px, #FFF 0px, #fff 2px, rgba(255,255,255,0) 4px), -webkit-linear-gradient(bottom, rgba(255,255,255,0.5) 0%, rgba(255,255,255,0) 100%);
	  background-image: radial-gradient( 9px -4px, #FFF 0px, #fff 2px, rgba(255,255,255,0) 4px), linear-gradient(bottom, rgba(255,255,255,0.5) 0%, rgba(255,255,255,0) 100%);
  }
  .close a{
	  background-color:#f32c31;
	  
  }
  .min a{background-color:#f7bf67;}
  .max a{background-color:#89cb5a;}
  .h1{
	  text-align: center;
	  color:#fff;
	  font-weight: 400;
	  font-size: 4em;
	  line-height: 0;
	  margin-top:80px;
	  margin-bottom:-60px;
	  text-shadow:#000 0px -1px 0px;
  }
  p{
	  color:#fff;
	  text-shadow: #999 0px -1px 0px;
	  font-size:1.2em;
	  line-height: 2em;
  }
  a{
	  color:#953b3b;
  }
  
  $(function(){

	// when a value is clicked
	$(".val").click(function(e){
	  // prevent the link from acting like a link
	  e.preventDefault();
	  //grab this link's href value
		var a = $(this).attr("href");
	  // append said value to the screen
		  $(".screen").append(a);
	  // append same value to a hidden input
		  $(".outcome").val($(".outcome").val() + a);
		  
	  });
	// when equals is clicked
	  $(".equal").click(function(){
	  // solve equation and put in hidden field
		  $(".outcome").val(eval($(".outcome").val()));
	  // take hidden field's value & put it on screen
		  $(".screen").html(eval($(".outcome").val()));
	  });
	// clear field
	  $(".clear").click(function(){
		  $(".outcome").val("");
		  $(".screen").html("");
	  });
	// minimize (looks kinda cool?)
	  $(".min").click(function(){
		  $(".cal").stop().animate({
			  width: "0px", height: "0px", marginLeft: "700px", marginTop: "1000px"
		  }, 500);
		  setTimeout(function(){$(".cal").css("display", "none")}, 600);
	  });
	//close window. refresh to get back
	  $(".close").click(function(){
		  $(".cal").css("display", "none");
	  })
  })
