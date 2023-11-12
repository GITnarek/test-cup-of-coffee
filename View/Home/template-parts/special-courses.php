<section class="special-courses">
    <div class="main-container">
        <div class="title-section">
            <h3>Спецкурсы</h3>
        </div>
        <div class="courses">
            <?php
                $sql = 'select * from courses';

                $model = new HomeModel();
                $model->query($sql);
                $courses = $model->resultSet();
                $labels = [
                    'new' => [
                        'name' => 'НОВИНКА',
                        'color' => '#EA506D'
                    ],
                    'hit' => [
                        'name' => 'ХИТ',
                        'color' => '#89C53B'
                    ],
                    'popular' => [
                        'name' => 'ПОПУЛЯРНО',
                        'color' => '#6FA0FC'
                    ],
                ];

                foreach ($courses as $row) { ?>
                    <div class="course-item">
                        <div class="course-top">
                            <span class="course-label" style="background-color: <?= $labels[$row['label']]['color'] ?? '' ?>"><?= $labels[$row['label']]['name'] ?? '' ?></span>
                            <span class="more">Подробнее</span>
                            <div class="course-popup">
                                <div class="popup-body">
                                    <h3 class="course-title"><?= $row['name'] ?></h3>
                                    <div class="course-description"><?= $row['description'] ?></div>
                                </div>
                            </div>
                        </div>
                        <div class="course-item-image">
                            <img src="/View/assets/images/course-<?= $row['id'] ?>.jpg" alt="">
                        </div>
                        <div class="course-price">
                            <span><?= $row['price'] ?>₽</span>
                        </div>
                    </div>
                <?php }
            ?>
        </div>
        <div class="more-courses">
            <button>Показать еще</button>
        </div>
    </div>
</section>