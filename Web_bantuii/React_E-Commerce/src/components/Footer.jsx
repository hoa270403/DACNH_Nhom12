import React from "react";
const Footer = () => {
  return (
    <>
      <footer className="mb-0 bg-dark text-white">
        <div className="d-flex align-items-center justify-content-center pb-2 pt-3">
            
          <div className="col-md-3">
            <p className="mb-md-0"><strong>Address: </strong></p>
            <p className="mb-3 mb-md-0">L1-46A Vincom, 191 P. Bà Triệu, Lê Đại Hành, Hai Bà Trưng, Hà Nội</p>
          </div>
          <div className="col-md-3">
            <p className="mb-md-0"><strong>Open Hours:</strong></p>
            <p className="mb-3 mb-md-0"><strong>Monday - Saturday: </strong>9:00 - 23:00<br/>Sunday: Closed</p>
          </div>
          
          <div className="col-md-3">
            <p className="mb-3 mb-md-0"><strong>Contact us:</strong></p>
            <p className="fs-4">
              <i className="fa fa-github pl-3"></i>
              <i className="fa fa-facebook pl-3"></i>
              <i className="fa fa-instagram pl-3"></i>
              <i className="fa fa-linkedin pl-3"></i>
              <i className="fa fa-pinterest pl-3"></i>
              <i className="fa fa-tiktok pl-3"></i>
            </p >
            <p>
              Phone: 024 6253 3339<br/>
              Email: info@example.com
            </p>
          </div>

        </div>
        <div className="d-flex align-items-center justify-content-center pb-4 pt-2">
            <p className="mb-3 mb-md-0">
              <i className="fa fa-copyright pl-3"></i>
              <a className="text-decoration-underline fs-5 text-white">
                Team Nhóm 12
              </a>
            </p>
          </div>
      </footer>
    </>
  );
};

export default Footer;
