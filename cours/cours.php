<?php
require_once("../fragments_pages/header.php");
require_once("../fragments_pages/navbar.php");

require_once("../dbconnect.php");



// Récupération des données
$sql = "Select c.id_cours, cat.nom_categorie,c.titre_cours,form.prix_cours,
image_cours,
description_cours , f.nom_formateur as formateur,f.image_formateur
from cours c, categories cat, formateurs f, formation form
where c.id_categorie=cat.id_categorie
and form.id_formateur=f.id_formateur
and form.id_cours=c.id_cours";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$cours = $stmt->fetchAll(PDO::FETCH_ASSOC);



?>


<main class="main">

  <!-- Page Title -->
  <div class="page-title" data-aos="fade">
    <div class="heading">
      <div class="container">
        <div class="row d-flex justify-content-center text-center">
          <div class="col-lg-8">
            <h1>Courses</h1>
            <p class="mb-0">Odio et unde deleniti. Deserunt numquam exercitationem. Officiis quo odio sint voluptas
              consequatur ut a odio voluptatem. Sit dolorum debitis veritatis natus dolores. Quasi ratione sint. Sit
              quaerat ipsum dolorem.</p>
          </div>
        </div>
      </div>
    </div>
    <nav class="breadcrumbs">
      <div class="container">
        <ol>
          <li><a href="index.html">Home</a></li>
          <li class="current">Cours</li>
        </ol>
      </div>
    </nav>
  </div><!-- End Page Title -->

  <!-- Courses Section -->
  <section id="courses" class="courses section">

  <div class="container">
    <div class="row mb-4">
      <?php
      $count = 0; // Compteur pour suivre le nombre de cours affichés
      foreach ($cours as $le_cour): ?>
        <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="<?= $count * 100 ?>">
            <div class="course-item">
                <img src="<?= htmlspecialchars($le_cour['image_cours']) ?>" class="img-fluid" alt="...">
                <div class="course-content">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <p class="category"><?= htmlspecialchars($le_cour['nom_categorie']) ?></p>
                        <p class="price"><?= htmlspecialchars($le_cour['prix_cours']) ?></p>
                    </div>
                    <h3><a href="cours-details.php?id=<?= $le_cour['id_cours'] ?>"><?= htmlspecialchars($le_cour['titre_cours']) ?></a></h3>
                    <p class="description"><?=$le_cour['description_cours'] ?></p>
                    <div class="trainer d-flex justify-content-between align-items-center">
                        <div class="trainer-profile d-flex align-items-center">
                            <img src="<?= $le_cour['image_formateur'] ?>" class="img-fluid" alt="">
                            <a href="" class="trainer-link"><?= $le_cour['formateur'] ?></a>
                        </div>
                        <div class="trainer-rank d-flex align-items-center">
                            <i class="bi bi-person user-icon"></i>&nbsp;50
                            &nbsp;&nbsp;
                            <i class="bi bi-heart heart-icon"></i>&nbsp;65
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End Course Item -->
        
        <?php 
        $count++; // Incrémente le compteur
        if ($count % 3 == 0): // Si 3 cours ont été affichés, fermer la ligne et en ouvrir une nouvelle ?>
            </div><div class="row mb-4"> <!-- Nouvelle ligne -->
        <?php endif; ?>
      <?php endforeach; ?>
    </div> <!-- Fin de la dernière ligne -->
</div>


  </section><!-- /Courses Section -->

</main>

<?php
require_once("../fragments_pages/footer.php");


