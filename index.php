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
        <div class="cart_section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="cart_container">
                    <div class="cart_title">Shopping Cart<small> (0 items in your cart) </small></div>
                    <div class="cart_items">
                        <ul class="cart_list">
                            <li class="cart_item clearfix">
                                <div class="cart_item_image"><img src="nothing.jpeg" alt=""></div>
                                <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
                                    <div class="cart_item_name cart_info_col">
                                        <div class="cart_item_title">Name</div>
                                        <div class="cart_item_text"><?= $item ?></div>
                                    </div>
                                    <div class="cart_item_quantity cart_info_col">
                                        <div class="cart_item_title">Quantity</div>
                                        <div class="cart_item_text">NULL</div>
                                    </div>
                                    <div class="cart_item_price cart_info_col">
                                        <div class="cart_item_title">Price</div>
                                        <div class="cart_item_text"><?= $item->prijs ?></div>
                                    </div>
                                    <div class="cart_item_total cart_info_col">
                                        <div class="cart_item_title">Total</div>
                                        <div class="cart_item_text">$geld</div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="order_total">
                        <div class="order_total_content text-md-right">
                            <div class="order_total_title">Order Total:</div>
                            <div class="order_total_amount">$geld</div>
                        </div>
                    </div>
                    <div class="cart_buttons"> <button type="button" class="button cart_button_clear">Continue Shopping</button> <button type="button" class="button cart_button_checkout">Add to Cart</button> </div>
                </div>
            </div>
        </div>
    </div>
</div>
        <div class="row gy-3 ">
            <?php $items = getItems(); ?>
            <?php foreach ($items as $item) : ?>
                <div class="col-sm-6 col-md-6">
                    <div class="card" style="width: 35rem; height: 30rem">
                        <div class="card-body text-center">
                            <h5 class="card-title mb-3">
                                <?= $item->name; ?>
                            </h5> 
                            <div>
                                <a href="/item/<?= $item->id ?>">
                                <img class="product-img img-responsive center-block" style="width: 50%;" src='<?= $item->image ?>' />
                                </a>
                                <br>
                                <h5>
                                € <?= $item->prijs ?>
                                </h5>
                            </div>
                            
                            <div class="col-auto my-1">
                            <label class="mr-sm-2" for="inlineFormCustomSelect">Aantal</label>
                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                <option selected>Kies...</option>
                                <option value="1">Een</option>
                                <option value="2">Twee</option>
                                <option value="3">Drie</option>
                                <option value="4">Vier</option>
                                <option value="5">Vijf</option>
                                <option value="6">Zes</option>
                                <option value="7">Zeven</option>
                                <option value="8">Acht</option>
                                <option value="9">Negen</option>
                                <option value="10">Tien</option>
                            </select>
                            </div>

                            <div>
                            <button type="button" class="btn btn-danger">Toevoegen</button>
                            </div>
                        </div>
                    </div>
                    <br>
                </div>
            <?php endforeach; ?>
            
        </div>
    </div>
    </body>
    <?php
    include_once('defaults/footer.php');
    ?>
</html>