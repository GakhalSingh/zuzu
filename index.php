<?php
    require 'Modules/Database.php';
    require 'Modules/Items.php';
?>
<!doctype html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <title>Zuzu Sushi</title>
    </head>
    <body >
    <div class="container" style="background:pink">
        <?php
            include_once('defaults/header.php');
            include_once('defaults/carousel.php');
        ?>
        <div class="row gy-3 ">
            <?php $items = getItems(); ?>
            <?php foreach ($items as $item) : ?>
                <div class="col-sm-6 col-md-6">
                    <div class="card" style="width: 35rem; height: 35rem">
                        <div class="card-body text-center">
                            <div class="card-title mb-3">
                                <?= $item->name; ?>
                            </div>
                            <div>
                                <a href="/machine/<?= $item->id ?>">
                                    <img class="product-img img-responsive center-block" src='<?= $item->image ?>' />
                                </a>

                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
    </body>
    <?php
    include_once('defaults/footer.php');
    ?>
</html>