<div class="content-wrap2 conactform">
<div class="headerimg">
    <img src='/assets/headerimages/<?= $page ?>-headerimg.jpg' alt='<?= $page ?> header image'>
</div>
<div class="contact">
	<div class="w50pc conactform">
		<h2 class="oleo c0">Contact Us</h2>
		<form id="contact-form" method="post">
			<input id="form-check" type="hidden" name="00<?= sha1(rand(0,time())) ?>" value=""/>
			<input type="text" name="name" placeholder="Name (first and last)" value="<?= $name ?>"/>
			<input type="text" name="phone" placeholder="Mobile Phone" value="<?= $phone ?>"/>
			<input type="text" name="email" placeholder="Email" value="<?= $email ?>"/>
			<textarea name="message" placeholder="How can we help you?" class="tall"><?= $message ?></textarea>
			<input type="submit" value="SEND"/>
		</form>
	</div>
    <div class="w50pc">
         <div class="googlemap">
             <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d14239.123551358973!2d-80.12959035707841!3d26.846920595762334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sCouture+Homes+Phone%3A+561.776.0511+3900+Military+Trail+Jupiter%2C+FL+33458!5e0!3m2!1sen!2s!4v1412264711813" width="400" height="300" frameborder="0" style="border:0"></iframe>
        </div>
        <div class="address">
            Couture Homes<br>Phone:561.776.0511<br>3900 Military Trail<br>Jupiter FL 33458
        </div>
     </div>
    
</div>
</div>