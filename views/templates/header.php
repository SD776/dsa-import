<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--favicon-->
	<link rel="shortcut icon" type="image/x-icon" href="<?php echo BASE_URL; ?>assets/images/logopng.png">
	<link href="<?php echo BASE_URL; ?>assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
	<link href="<?php echo BASE_URL; ?>assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
	<link href="<?php echo BASE_URL; ?>assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />
	<!-- loader-->
	<link href="<?php echo BASE_URL; ?>assets/css/pace.min.css" rel="stylesheet" />
	<script src="<?php echo BASE_URL; ?>assets/js/pace.min.js"></script>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/jquery-ui.min.css">
	<link href="<?php echo BASE_URL; ?>assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="<?php echo BASE_URL; ?>assets/css/bootstrap-extended.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
	<link href="<?php echo BASE_URL; ?>assets/css/app.css" rel="stylesheet">
	<link href="<?php echo BASE_URL; ?>assets/css/icons.css" rel="stylesheet">

	<!-- Theme Style CSS -->
	<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/dark-theme.css" />
	<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/semi-dark.css" />
	<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/header-colors.css" />
	<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/DataTables/datatables.min.css" />
	<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/plugins/fullcalendar/css/main.min.css" />

	<title><?php echo TITLE . ' - ' . $data['title']; ?></title>
</head>

<body>
	<!--wrapper-->
	<div class="wrapper">
		<!--sidebar wrapper -->
		<div class="sidebar-wrapper" data-simplebar="true">
			<div class="sidebar-header">
				<div>
					<img src="<?php echo BASE_URL; ?>assets/images/logopng.png" class="logo-icon" alt="logo icon">
				</div>
				<div>
					<h4 class="logo-text">DSA Import</h4>
				</div>
				<div class="toggle-icon ms-auto"><i class='bx bx-arrow-to-left'></i>
				</div>
			</div>
			<!--navigation-->
			<ul class="metismenu" id="menu">
				<li>
					<a href="<?php echo BASE_URL . 'admin'; ?>">
						<div class="parent-icon"><i class="fa-solid fa-house-user"></i>
						</div>
						<div class="menu-title">Tablero</div>
					</a>
				</li>
				<?php  if ($_SESSION['rol'] == 1) {?>
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="fa-solid fa-screwdriver-wrench"></i>
						</div>
						<div class="menu-title">Administración</div>
					</a>
					<ul>
						<li> <a href="<?php echo BASE_URL . 'usuarios'; ?>"><i class="bx bx-right-arrow-alt"></i>Usuarios</a>
						</li>
						<li> <a href="<?php echo BASE_URL . 'admin/datos'; ?>"><i class="bx bx-right-arrow-alt"></i>Configuración</a>
						</li>
			

					</ul>
				</li>
				<?php } ?>
				<?php  if ($_SESSION['rol'] == 3) {?>
				<li>
					<a href="javascript:;" class="has-arrow">
						<div class="parent-icon"><i class="fa-solid fa-clipboard-list"></i>
						</div>
						<div class="menu-title">Gestion de Productos</div>
					</a>
					<ul>
						<li> <a href="<?php echo BASE_URL .	'medidas'; ?>"><i class="bx bx-right-arrow-alt"></i>Medidas</a>
						</li>
						<li> <a href="<?php echo BASE_URL .	'categorias'; ?>"><i class="bx bx-right-arrow-alt"></i>Categorias</a>
						</li>
						<li> <a href="<?php echo BASE_URL .	'productos'; ?>"><i class="bx bx-right-arrow-alt"></i>Productos</a>
						</li>
					</ul>
				</li>
				<?php } ?>
				<?php  if ($_SESSION['rol'] == 3 or ($_SESSION['rol'] == 2))  {?>
				<li>
					<a href="<?php echo BASE_URL . 'clientes'; ?>">
						<div class="parent-icon"><i class="fa-solid fa-users"></i>
						</div>
						<div class="menu-title">Clientes</div>
					</a>
				</li>
				<?php } ?>
				<?php  if ($_SESSION['rol'] == 1) {?>
				<li>
					<a href="<?php echo BASE_URL . 'proveedor'; ?>">
						<div class="parent-icon"><i class="fa-solid fa-user-tie"></i>
						</div>
						<div class="menu-title">Proveedores</div>
					</a>
				</li>
				<?php } ?>
				<?php  if ($_SESSION['rol'] == 3) {?>
				<li>
					<a href="<?php echo BASE_URL . 'compras'; ?>">
						<div class="parent-icon"><i class="fa-solid fa-cart-shopping"></i>
						</div>
						<div class="menu-title">Compras</div>
					</a>
				</li>
				<?php } ?>
				<?php  if ($_SESSION['rol'] == 2) {?>
				<li>
					<a href="<?php echo BASE_URL . 'ventas'; ?>">
						<div class="parent-icon"><i class="fa-solid fa-basket-shopping"></i>
						</div>
						<div class="menu-title">Ventas</div>
					</a>
				</li>
				<?php } ?>
				<?php  if ($_SESSION['rol'] == 4) {?>
				<li>
					<a href="<?php echo BASE_URL . 'creditos'; ?>">
						<div class="parent-icon"><i class="fa-solid fa-credit-card"></i>
						</div>
						<div class="menu-title">Administrar Créditos</div>
					</a>
				</li>
				<?php } ?>
				<?php  if ($_SESSION['rol'] == 1 or $_SESSION['rol'] == 3) {?>
				<li>
					<a href="<?php echo BASE_URL . 'inventarios'; ?>">
						<div class="parent-icon"><i class="fa-solid fa-truck-ramp-box"></i>
						</div>
						<div class="menu-title">Historial de inventario</div>
					</a>
				</li>
				<?php } ?>
				<?php  if ($_SESSION['rol'] == 1) {?>
				<li>
					<a href="<?php echo BASE_URL . 'backup'; ?>">
						<div class="parent-icon"><i class="fa-solid fa-download"></i>
						</div>
						<div class="menu-title">Backup del Sistema</div>
					</a>
				</li>
				<?php } ?>

			</ul>
			<!--end navigation-->
		</div>
		<!--end sidebar wrapper -->
		<!--start header -->
		<header>
			<div class="topbar d-flex align-items-center">
				<nav class="navbar navbar-expand">
					<div class="mobile-toggle-menu"><i class='bx bx-menu'></i>
					</div>
					<div class="search-bar flex-grow-1">
						<div class="position-relative">
							<h6><?php echo TITLE; ?></h6>
						</div>
					</div>
					<div class="user-box dropdown">
						<a class="d-flex align-items-center nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							<?php if ($_SESSION['perfil_usuario'] == null) {
								$perfil = BASE_URL . 'assets/images/logo-empresa.png';
							} else {
								$perfil = BASE_URL . $_SESSION['perfil_usuario'];
							} ?>
							<img src="<?php echo $perfil; ?>" class="logo-icon" alt="logo icon">
							<div class="user-info ps-3">
								<p class="user-name mb-0"><?php echo $_SESSION['nombre_usuario']; ?></p>
								<p class="designattion mb-0"><?php echo $_SESSION['correo_usuario']; ?></p>
							</div>
						</a>
						<ul class="dropdown-menu dropdown-menu-end">
							<li><a class="dropdown-item" href="<?php echo BASE_URL . 'usuarios/profile'; ?>"><i class="bx bx-user"></i><span>Perfil</span></a>
							</li>
							<li>
								<div class="dropdown-divider mb-0"></div>
							</li>
							<li><a class="dropdown-item" href="<?php echo BASE_URL . 'usuarios/salir'; ?>"><i class='bx bx-log-out-circle'></i><span>Cerrar Sesión</span></a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</header>
		<!--end header -->
		<!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">