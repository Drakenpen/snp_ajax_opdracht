<div class="container">
    <h2>Welcome,   
			 <?php if ( $this->model->isAdmin()) : ?>
			    Admin
			 <?php endif; ?> 
			 <span class="text-muted"><?php echo $_SESSION['Voornaam'] ?>.</span>
			 </h2>
    <hr class="featurette-divider">

    <div class="featurette" id="index">
		<div class ="box">
		     <p>  You are currently logged in as <?php echo $_SESSION['Gebruikersnaam']; ?>.</p>
		     <p>  Your registered email address is <?php echo $_SESSION['Email']; ?>.</p>
		</div>
    </div>

<div class="container">
  <h2>Large Modal</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Large Modal</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>This is a large modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
	<hr class="featurette-divider">