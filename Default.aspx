<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:85%; margin: 0 auto">
        <div class="container">
          <div class="row">
            <div class="col">
              <div id="carousel" class="carousel slide"data-ride="carousel" data-interval="5000">
                <div class="carousel-inner" >
                  <div class="carousel-item active">
                    <img class="d-block img-fluid w-100" src="Images/Slideshow/slide1.jpg" style="max-height:300px" >
                    <div class="carousel-caption">
                      <h2><i>"Become the greatest version of yourself"</i></h2>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img class="d-block img-fluid w-100" src="Images/Slideshow/slide2.jpg"style="max-height:300px" >
                    <div class="carousel-caption">
                      <h3>Friendship</h3>
                    </div>
                  </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid w-100" src="Images/Slideshow/slide2.jpg"style="max-height:300px">
                        <div class="carousel-caption">
                            <h3>Sound Learning</h3>
                        </div>
                    </div>
                <div class="carousel-item">
                    <img class="d-block img-fluid w-100" src="Images/Slideshow/slide2.jpg"style="max-height:300px">
                    <div class="carousel-caption">
                        <h3>Moral Rectitude</h3>
                    </div>
                </div>
                </div>
                <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                  <span class="carousel-control-next-icon"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
            </div>
          </div>
            <div class="row">
                <div class="col">
                    <h1>STUFF</h1>
                </div>
                <div class="col">
                    <h1>THINGS</h1>
                </div>
            </div>
            
        </div>
        
    </div>
</asp:Content>

