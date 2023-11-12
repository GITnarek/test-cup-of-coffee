<section class="form">
    <div class="form-heading">
        <h2>Еще думаете?</h2>
        <p>
            Записывайтесь на бесплатный урок и
            <br> попробуйте сами, это поможет
            <br> принять решение
        </p>
    </div>
    <div class="form-layout">
        <form id="dataForm" action="/index.php?action=submitForm" method="post">
            <input type="text" id="name" name="name" placeholder="Введите ваше имя" required>
            <input type="tel" id="phone" name="phone" placeholder="Введите ваш телефон" pattern="[0-9]{9}" required>
            <input type="email" id="email" name="email" placeholder="Введите ваш email" required>
            <button class="form-submit" type="submit">
                <span>записаться</span>
            </button>
        </form>
    </div>
    <div class="form-info">
        <span class="form-infoText">
            Нажимая на кнопку, вы даете согласие на обработку персональных
            <br>
            данных и соглашаетесь с политикой конфиденциальности
        </span>
    </div>
    <div class="loader">Загрузка...</div>
    <div class="success-message">Форма успешно отправлена!</div>
    <div class="error-message">Ошибка при отправке формы. Пожалуйста, попробуйте снова.</div>
</section>


