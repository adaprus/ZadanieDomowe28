package pl.javastart.cookbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import pl.javastart.cookbook.repository.CategoryRepository;
import pl.javastart.cookbook.repository.RecipeRepository;
import pl.javastart.cookbook.entity.Category;

import java.util.Optional;

@Controller
public class CategoryController {
    private RecipeRepository recipeRepository;
    private CategoryRepository categoryRepository;

    public CategoryController(RecipeRepository recipeRepository, CategoryRepository categoryRepository) {
        this.recipeRepository = recipeRepository;
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("/kategoria/{id}")
    private String category(@PathVariable Long id, Model model) {
        Optional<Category> categoryOptional = categoryRepository.findById(id);

        if (categoryOptional.isPresent()) {
            Category category = categoryOptional.get();
            model.addAttribute("category", category);
            return "category";
        } else {
            return "redirect:/";
        }
    }
}
