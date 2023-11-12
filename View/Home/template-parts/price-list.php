<section class="price-list">
    <div class="main-container">
        <div class="title-section">
            <h2>Выберите свой вариант обучения</h2>
        </div>
        <div class="prices">
            <?php
                $sql = 'select * from promo_prices order by `order`';

                $model = new HomeModel();
                $model->query($sql);
                $prices = $model->resultSet();

                foreach ($prices as $row) {
                    $percent = '54%';
                    ?>
                    <div class="price-item">
                        <p class="price-title"><?= $row['title'] ?></p>
                        <div class="price-section">
                            <span class="price"><?= $row['price'] ?>₽</span>
                            <span class="old-price"><?= $row['oldprice'] ?>₽</span>
                            <span class="percent">-<?= $percent ?></span>
                        </div>
                        <div class="price-description">
                            <b><?= $row['months'] ?> месяца обучения</b>
                            <span>Грамматическая выжимка</span>
                            <span>Разговорный тренажёр</span>
                            <span>Слова с ассоциациями</span>
                            <span>Регулярные мини-задания</span>
                            <span>Персональный куратор</span>
                            <span>Сертификат об обучении</span>
                            <span>Best Teachers</span>
                            <b>Звонки от Second Teacher</b>
                        </div>
                        <div class="prepayment">
                            <p class="prepayment-title">Предоплата</p>
                            <p class="prepayment-price"><?= $row['prepay'] ?> <span class="currency">₽</span></p>
                        </div>
                        <div class="price-buttons">
                            <a href="<?= $row['link_ru'] ?>">
                                <button class="button-rf">внести предоплату из рф</button>
                            </a>
                            <a href="<?= $row['link_en'] ?>">
                                <button class="button-abroad">внести предоплату из-за границы</button>
                            </a>
                        </div>
                    </div>
            <?php } ?>
        </div>
    </div>
</section>
