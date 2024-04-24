<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SLTBweb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html>
<head>

  <title>SLTB Ticket Booking</title>
  <style>
    *{
    margin: 0;
    padding: 0;
    font-family: 'Noto Sans', sans-serif;
}



/*hero*/

.hero {
  background-image: url("https://scontent.fcmb11-1.fna.fbcdn.net/v/t1.6435-9/121737339_177978673822740_8991332873861000659_n.png?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_ohc=KJnGSTZM81EAX_zrXkd&_nc_ht=scontent.fcmb11-1.fna&oh=00_AfDdobXlKy9tJfy2pEAtib0bqR8t79tg_8cVzmdt-m61Cg&oe=66308110");
  background-size: cover;
  background-position: center;
  height: 100vh;
  width: 100%;
  margin : 0 auto;
  display: flex;


  text-align: left;
  color: #fff;
}

.hero-content {
  max-width: 600px;
  padding: 20px;
  margin-top :50px;
  margin-left: 4%;
  
}

.hero-content h1 {
  font-size: 48px;
  margin-bottom: 20px;
}

.hero-content p {
  font-size: 24px;
  margin-bottom: 30px;
}

/*about*/

.about {
  display: flex;
  align-items: center;
  padding: 80px 0;
}

.about-content {
  flex: 1;
  max-width: 600px;
  padding-right: 50px;
  color: #fff;
  margin-left: 5%;
  
  
}

.about h2 {
  font-size: 40px;
  margin-bottom: 20px;
}

.about p {
  font-size: 18px;
  margin-bottom: 20px;
  text-align: justify;
}

.about-image {
  max-width: 50%;
  margin-right: 5%;
}

.about-image img {
  max-width: 100%;
  height: auto;
  border-radius: 5px;
}

.dark-theme {
  background-color: #070e16;
}


/* menu*/
.menu {
  padding: 80px 0;
  text-align: center;
  background-color: #070e16;
}

.menu h2 {
  font-size: 36px;
  margin-bottom: 40px;
  color: #ffffff;
}

.menu-items {
  display: flex;
  justify-content: center;
}

.menu-item {
  max-width: 300px;
  margin: 0 20px;
  text-align: left;
}

.menu-item img {
  max-width: 100%;
  height: 60%;
  border-radius: 5px;
  margin-bottom: 10px;
}

.menu-item h3 {
  font-size: 24px;
  margin-bottom: 10px;
  color: #ffffff;
  text-align: center;
}

.menu-item p {
  font-size: 16px;
  margin-bottom: 20px;
  color: #ffffff;
  text-align: justify;
}


/* Gallery Section*/

.gallery {
  padding: 80px 0;
  text-align: center;
  background-color: #070e16;
}

.gallery h2 {
  font-size: 36px;
  margin-bottom: 40px;
  color: #fff;
}

.image-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-gap: 20px;
  margin-left: 5%;
  margin-right: 5%;
}

.image-item img {
  width: 100%;
  height: 80%;
  border-radius: 5px;
}


/* Contact Section*/

.contact {
  background-color: #333;
  padding: 80px 0;
  text-align: center;
  color: #fff;
}

.contact-container {
  max-width: 600px;
  margin: 0 auto;
}

.contact h2 {
  font-size: 36px;
  margin-bottom: 40px;
}

.contact-info {
  display: flex;
  justify-content: center;
  margin-bottom: 40px;
}

.info-item {
  margin: 0 20px;
  text-align: center;
}

.info-item i {
  font-size: 24px;
  margin-bottom: 10px;
}

.contact-form input,
.contact-form textarea {
  display: block;
  width: 100%;
  padding: 10px;
  margin-bottom: 20px;
  border-radius: 5px;
  border: none;
}

.contact-form textarea {
  resize: vertical;
}

.contact-form button {
  display: inline-block;
  background-color: #ff0000;
  color: #fff;
  padding: 10px 20px;
  border-radius: 5px;
  text-decoration: none;
  font-weight: bold;
  transition: background-color 0.3s ease;
}

.contact-form button:hover {
  background-color: #e60000;
}


/* Footer*/

.footer {
  background-color: #070e16;
  padding: 40px 0;
  color: #fff;
  text-align: center;
}

.footer-content {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-bottom: 40px;
}

.footer-logo img {
  max-width: 150px;
}

.footer-links a {
  color: #fff;
  margin: 0 10px;
  text-decoration: none;
}

.footer-text {
  font-size: 14px;
}
.my-button {
  background-color: #ff0000;
  color: #fff;
  padding: 10px 20px;
  border-radius: 5px;
  border: none;
  cursor: pointer;
  font-size: 16px;
  font-weight: bold;
  text-decoration: none;
  transition: background-color 0.3s ease;
}

.my-button:hover {
  background-color: #e60000;
}



  </style>


</head>

<body>
	

<section class="hero">
  <div class="hero-content">
    <h1>Welcome to SLTB</h1>
    <p>Experience the Online Ticket Booking Here</p>
  </div>
</section>

<section class="about dark-theme">
  <div class="about-content">
    <h2>About SLTB E Ticket Service</h2>
    <p>
      SLTB E-ticketing Service revolutionizes the way passengers travel by offering a seamless online booking platform for Sri Lanka Transport Board buses. Our user-friendly interface simplifies the booking process, allowing passengers to effortlessly plan their journeys from the comfort of their homes. With SLTB E-ticketing Service, passengers can browse available routes, select preferred departure times, and secure their seats with just a few clicks. Say goodbye to long queues and last-minute hassles – experience the convenience of booking your bus tickets in advance with SLTB E-ticketing Service.</p>
    <p>At SLTB E-ticketing Service, we prioritize passenger satisfaction and safety above all else. Our secure payment gateway ensures that transactions are protected, providing peace of mind to passengers throughout the booking process. Whether commuting for work or embarking on a leisurely adventure, our reliable e-ticketing platform offers a stress-free travel experience. Join us in embracing the future of bus travel in Sri Lanka – fast, efficient, and effortlessly convenient with SLTB E-ticketing Service.</p>
  </div>
  <div class="about-image">
    <img src="https://i.pinimg.com/originals/3b/9e/03/3b9e03dd572e0e373a359adad97ed8a5.jpg" alt="About Image">
  </div>
</section>


<section class="menu">
  <h2>SLTB Services</h2>
  <div class="menu-items">
    <div class="menu-item">
      <img src="https://routemaster.lk/wp-content/uploads/2014/08/sri-lanka-bus-route-04.jpg" alt="image 1">
      <h3>Express Routes</h3>
      <p>Travel swiftly with our express bus routes, ensuring punctuality and efficiency for your journey.</p>
    </div>
    <div class="menu-item">
      <img src="https://assets.iflscience.com/assets/articleNo/71036/aImg/71221/public-transport-fabric-patterns-meta.png" alt="image 2">
      <h3>Luxury Coaches</h3>
      <p>Indulge in luxury travel with our premium coaches equipped with comfortable seating and modern amenities.</p>
    </div>
    <div class="menu-item">
      <img src="https://down-ph.img.susercontent.com/file/07710c4723a7dde6c627feb438d1fb25" alt="image 3">
      <h3>Special Packages</h3>
      <p>Explore exciting destinations with our special package deals, tailored to suit your travel preferences.</p>
    </div>
  </div>
</section>


<section class="gallery">
  <h2>Gallery</h2>
  <div class="image-grid">
    <div class="image-item">
      <img src="https://www.techspenzer.com/wp-content/uploads/2023/08/sltb-bus-1.jpg" alt="Image 1">
    </div>
    <div class="image-item">
      <img src="https://adaderanaenglish.s3.amazonaws.com/1535963571-SLTB-bus-strike-in-Southern-Province-enters-day-three-B.jpg" alt="Image 2">
    </div>
    <div class="image-item">
      <img src="https://bmkltsly13vb.compat.objectstorage.ap-mumbai-1.oraclecloud.com/cdn.dailymirror.lk/assets/uploads/image_9144c7ff75.jpg" alt="Image 3">
    </div>
    <div class="image-item">
      <img src="https://bmkltsly13vb.compat.objectstorage.ap-mumbai-1.oraclecloud.com/cdn.timesonline.lk/wp-content/uploads/2020/12/SHA9547pmd-1.jpg" alt="Image 4">
    </div>
  </div>
</section>

<section class="contact">
  <div class="contact-container">
    <h2>Contact Us</h2>
    <div class="contact-info">
      <div class="info-item">
        <i class="fas fa-map-marker-alt"></i>
        <p>Kurunegala, Sri Lanka</p>
      </div>
      <div class="info-item">
        <i class="fas fa-phone-alt"></i>
        <p>011 202 2022</p>
      </div>
      <div class="info-item">
        <i class="fas fa-envelope"></i>
        <p>info@sltb.lk</p>
      </div>
    </div>
      <form class="contact-form">
          <input type="text" name="name" placeholder="Your Name" required />
          <input type="email" name="email" placeholder="Your Email" required />
          <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
          <button type="submit" class="my-button">Send Message</button>

      </form>
  </div>
</section>




<footer class="footer">
  <div class="footer-content">
    <div class="footer-logo">
      <img src="https://sltb.eseat.lk/images/front/newlogo.png" alt="Logo">
    </div>
    <nav class="footer-links">
      <a href="#">Home</a>
      <a href="#">About</a>
      <a href="#">SLTB Services</a>
      <a href="#">Gallery</a>
      <a href="#">Contact Us</a>
    </nav>
  </div>
  <p class="footer-text">&copy; 2024 SLTB LK. All rights reserved.</p>
  <p class="footer-text">&copy; Maheesha Maduwantha</p>
</footer>


</body>
</asp:Content>
