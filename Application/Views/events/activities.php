<div class="container">
<?php foreach ($events as $event) { ?>
		<h2>Kies een activiteit voor "<?php if (isset($event->title)) echo htmlspecialchars($event->title, ENT_QUOTES, 'UTF-8'); ?>"</h2>
<?php } ?>         
<hr class="featurette-divider">

	   <?php foreach ($activities as $activity) { ?>
	    <div class="cakebox">
	    	<form action="<?php echo URL; ?>events/selectActivity" method="POST" onsubmit="return confirm('Weet je het zeker?');">  
	    	<div class="img" style='background-image:url(<?php if (isset($event->small_banner_url)) echo ($event->small_banner_url); ?>)'>  	   
		    	<div class="img2">
					<p><?php if (isset($activity->title)) echo htmlspecialchars($activity->title, ENT_QUOTES, 'UTF-8'); ?></p>
					<p><?php if (isset($activity->description)) echo htmlspecialchars($activity->description, ENT_QUOTES, 'UTF-8'); ?></p>   
				</div> 
			</div>
			<br>    
		        <input type="hidden" name="activity_id" value="<?php if (isset($activity->id)) echo htmlspecialchars($activity->id, ENT_QUOTES, 'UTF-8'); ?>" >
		        <input type="hidden" name="user_id" value="<?php echo $_SESSION['Id'] ?>" >

		        <input type="submit" name="submit" id="submit" value="Select" class="btn btn-info">
		    </form>
		</div>
		<?php } ?>
<form id="foo">
    <label for="bar">A bar</label>
    <input id="id" name="id" type="text" value="<?php if (isset($event->id)) echo htmlspecialchars($event->id, ENT_QUOTES, 'UTF-8'); ?>" />

    <input type="submit" value="Send" />
</form>
<hr class="featurette-divider">

