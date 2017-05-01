<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>CMS</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<?php echo URL; ?>css/style.css" rel="stylesheet">
    <link href="<?php echo URL; ?>css/bootstrap.min.css" rel="stylesheet">
    <script src="https://use.fontawesome.com/bf8ab24a40.js"></script>

</head>
<body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <b><a class="navbar-brand" href="<?php echo URL; ?>">Home</a></b>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="<?php echo URL; ?>home/about">About</a>
                    </li>
                    <?php if ( $this->model->IsLoggedInSession()) : ?>
                    <li>
                        <a href="<?php echo URL; ?>events">Events</a>
                    </li>
                    <?php if ( $this->model->IsAdmin()) : ?>
                    <li>
                        <a href="<?php echo URL; ?>events/admin">Edit</a>
                    </li>
                    <?php endif; ?>
                    <li>
                        <a href="<?php echo URL; ?>login/logout">Logout</a>
                    </li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </nav>
<hr class="featurette-divider">