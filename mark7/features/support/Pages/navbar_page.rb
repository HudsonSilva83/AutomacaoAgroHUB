class Navbar < SitePrism::Page
 element :menu_usuario, '.profile-address'
 element :link_sair, '.dropdown-menu a[href*=logout]'

    def logout
        menu_usuario.click
        link_sair.click
    end

end
   
