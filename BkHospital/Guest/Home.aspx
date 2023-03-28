<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BkHospital.Guest.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <!-- Home -->
    <section class="home py-5 d-flex align-items-center" id="header">
        <div class="container text-light py-5"  data-aos="fade-right"> 
            <h1 class="headline">Best <span class="home_text">Healthcare</span><br>Solution In Your City</h1>
            <p class="para para-light py-3">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus tempore accusamus quis magnam doloremque itaque ad modi, pariatur iste labore similique officiis impedit aspernatur aperiam facere architecto. Eligendi, repellendus inventore!</p>
            <div class="d-flex align-items-center">
                <p class="p-2"><i class="fas fa-laptop-house fa-lg"></i></p>
                <p>Lorem ipsum dolor sit amet.</p>  
            </div>
            <div class="d-flex align-items-center">
                <p class="p-2"><i class="fas fa-wifi fa-lg"></i></p>
                <p>Services 24 X 7</p>  
            </div>
            <div class="my-3">
                <a class="btn" href="#services">Know more....!</a>
            </div>
        </div> <!-- end of container -->
    </section> <!-- end of home -->



    <!-- About -->
    <section class="about d-flex align-items-center text-light py-5" id="about">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-lg-7" data-aos="fade-right">
                    <p>ABOUT US</p>
                    <h1>We are top internet
                        <br>
                        service company</h1>
                    <p class="py-2 para-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Non sed accusantium aut dolores inventore architecto modi cupiditate eligendi corporis, illum illo culpa. Reiciendis, molestias. Illum voluptatum quisquam ad veritatis dolorem.</p>
                    <p class="py-2 para-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Non sed accusantium aut dolores inventore architecto modi cupiditate eligendi corporis, illum illo culpa. Reiciendis, molestias. Illum voluptatum quisquam ad veritatis dolorem.</p>

                    <div class="my-3">
                        <a class="btn" href="#your-link">Learn More</a>
                    </div>
                </div>
                <div class="col-lg-5 text-center py-4 py-sm-0" data-aos="fade-down">
                    <img class="img-fluid" src="../assets/images/about.jpg" alt="about">
                </div>
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
    </section>
    <!-- end of about -->



    <!-- Services -->
    <section class="services d-flex align-items-center py-5" id="services">
        <div class="container text-light">
            <div class="text-center pb-4">
                <p>OUR SERVICES</p>
                <h2 class="py-2">Explore unlimited possibilities</h2>
                <p class="para-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae asperiores, quia accusantium sunt corporis optio recusandae? Nostrum libero pariatur cumque, ipsa dolores voluptatibus voluptate alias sit fuga. Itaque, ea quo.</p>
            </div>
            <div class="row gy-4 py-2" data-aos="zoom-in">
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fa fa-2x fa-user-md text-info"></i>
                        <h4 class="py-2">Excellent Medical Services</h4>
                        <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fa fa-2x fa-user-md text-danger"></i>
                        <h4 class="py-2">Emergency Care</h4>
                        <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fa fa-2x fa-procedures text-warning"></i>
                        <h4 class="py-2">Operation & Surgery</h4>
                        <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fa fa-2x fa-stethoscope text-warning"></i>
                        <h4 class="py-2">Outdoor Checkup</h4>
                        <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fa fa-2x fa-stethoscope text-warning"></i>
                        <h4 class="py-2">Indoor Checkup</h4>
                        <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fa fa-2x fa-ambulance text-warning"></i>
                        <h4 class="py-2">Ambulance Service</h4>
                        <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fa fa-2x fa-pills text-warning"></i>
                        <h4 class="py-2">Medicine & Pharmacy</h4>
                        <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fa fa-2x fa-microscope text-warning"></i>
                        <h4 class="py-2">Blood Testing</h4>
                        <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fa fa-2x fa-microscope text-warning"></i>
                        <h4 class="py-2">Medical Helath Insurance</h4>
                        <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card bg-transparent">
                        <i class="fa fa-2x fa-user-md text-warning"></i>
                        <h4 class="py-2">Goverment Free Card</h4>
                        <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                    </div>
                </div>
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
    </section>
    <!-- end of services -->


      <!-- Work -->
    <section class="work d-flex align-items-center py-5"id="work" >
        <div class="container-fluid text-light">
            <div class="row">
                <div class="col-lg-6 d-flex align-items-center" data-aos="fade-right">
                    <img class="img-fluid" src="../assets/images/about.jpg" alt="work">        
                </div>
                <div class="col-lg-5 d-flex align-items-center px-4 py-3" data-aos="">
                    <div class="row">
                        <div class="text-center text-lg-start py-4 pt-lg-0">
                            <p>OUR WORK</p>
                            <h2 class="py-2">Best Medical Care For Yourself and Your Family</h2>
                            <p class="para-light">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dignissimos dicta mollitia totam explicabo obcaecati quia laudantium repudiandae.</p>
                        </div>
                        <div class="container" data-aos="fade-up">
                            <div class="row g-5">
                                <div class="col-3 text-start" >
                                    <i class="fa fa-3x fa-user-md mb-3 text-success"></i>
                                <h6 class="mb-0">Qualified<small class="d-block text-success">Doctors</small></h6>
                                </div>
                                <div class="col-3" >
                                     <i class="fa fa-3x fa-procedures text-warning mb-3"></i>
                                <h6 class="mb-0">Emergency<small class="d-block text-warning">Services</small></h6>
                                </div>
                                <div class="col-3">
                                     <i class="fa fa-3x fa-microscope text-info mb-3"></i>
                                <h6 class="mb-0">Accurate<small class="d-block text-info">Testing</small></h6>
                                </div>
                                <div class="col-3">
                                     <i class="fa fa-3x fa-ambulance text-danger mb-3"></i>
                                <h6 class="mb-0">Free<small class="d-block text-danger">Ambulance</small></h6>
                                </div>
                            </div>
                        </div> <!-- end of container -->
                    </div> <!-- end of row -->
                </div> <!-- end of col-lg-5 -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of work -->

     <!-- Testimonials -->
    <div class="slider-1 testimonial text-light d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="text-center w-lg-75 m-auto pb-4">
                    <p>OUR DOCOTORS</p>
                    <h2 class="py-2">What Our Doctor Says</h2>
                    <p class="para-light">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Adipisci esse facilis vel, neque ipsa mollitia impedit, commodi ab illo dignissimos, voluptatum quae amet sed tenetur dolores reprehenderit laudantium quo sint.</p>
                </div>
            </div> <!-- end of row -->
            <div class="row p-2" data-aos="zoom-in">
                <div class="col-lg-12">

                    <!-- Card Slider -->
                    <div class="slider-container">
                        <div class="swiper-container card-slider">
                            <div class="swiper-wrapper">
                                
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laboriosam commodi officia laborum qui iste quidem!</p>
                                    
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="../assets/images/testimonial-1.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>Rohit Kumar</h6>
                                                <p>Owner</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laboriosam commodi officia laborum qui iste quidem!</p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="../assets/images/testimonial-2.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>Rahul Kumar</h6>
                                                <p>Main - Visitor</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laboriosam commodi officia laborum qui iste quidem!</p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="../assets/images/testimonial-3.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>Dr. Nisha Kumari</h6>
                                                <p>Gyno Doctor.</p>
                                            </div>
                                        </div>
                                    </div>      
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laboriosam commodi officia laborum qui iste quidem!</p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="../assets/images/testimonial-4.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <p>Ritesh Kumar</p>
                                                <p>Manager</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                            </div> <!-- end of swiper-wrapper -->
        
                            <!-- Add Arrows -->
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <!-- end of add arrows -->
        
                        </div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of card slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of testimonials -->


     <!-- Contact -->
    <section class="contact d-flex align-items-center py-5" id="contact">
        <div class="container-fluid text-light">
            <div class="row">
                <div class="col-lg-6 d-flex justify-content-center justify-content-lg-end align-items-center px-lg-5" data-aos="fade-right">
                    <div style="width:90%">
                        <div class="text-center text-lg-start py-4 pt-lg-0">
                            <p>CONTACT</p>
                            <h2 class="py-2">Send your query</h2>
                            <p class="para-light">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dignissimos dicta mollitia totam explicabo obcaecati quia laudantium repudiandae.</p>
                        </div>
                        <div>
                            <div class="row" >
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="text" class="form-control form-control-input" id="exampleFormControlInput1" placeholder="Enter name">
                                    </div>                                
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="email" class="form-control form-control-input" id="exampleFormControlInput2" placeholder="Enter phone number">
                                    </div>                                 
                                </div>
                            </div>
                            <div class="form-group py-1">
                                <input type="email" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="Enter email">
                            </div>  
                            <div class="form-group py-2">
                                <textarea class="form-control form-control-input" id="exampleFormControlTextarea1" rows="6" placeholder="Message"></textarea>
                            </div>                            
                        </div>
                        <div class="my-3">
                            <a class="btn form-control-submit-button" href="#your-link">Submit</a>
                        </div>
                    </div> <!-- end of div -->
                </div> <!-- end of col -->
                <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                    <img class="img-fluid d-none d-lg-block" src="../assets/images/contact.jpg" alt="contact">        
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of contact -->



</asp:Content>
