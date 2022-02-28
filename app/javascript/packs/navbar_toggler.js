const navbarToggler = () => {
  $(document).ready(function () {
    $("#nav-toggler").click(function () {
      $(this).toggleClass("open");
    });
  });
}

export { navbarToggler }
