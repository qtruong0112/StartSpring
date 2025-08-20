package com.pqt03.projectspring.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.pqt03.projectspring.service.ProductService;

@Controller
public class ItemPageController {

    private final ProductService productService;

    public ItemPageController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/product/{id}")
    public String getProductPage(Model model, @PathVariable long id) {
        return this.productService.fetchProductById(id)
                .map(product -> {
                    model.addAttribute("product", product);
                    model.addAttribute("id", id);
                    return "client/product/detail"; // không cần dấu "/" ở đầu
                })
                .orElse("redirect:/"); // nếu không tìm thấy thì về homepage
    }

}
