package pl.javastart.cookbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.javastart.cookbook.repository.CategoryRepository;
import pl.javastart.cookbook.entity.Recipe;
import pl.javastart.cookbook.repository.RecipeRepository;
import pl.javastart.cookbook.entity.Category;

import java.util.List;
import java.util.Optional;

@Controller
public class RecipeController {

    private RecipeRepository recipeRepository;
    private CategoryRepository categoryRepository;

    public RecipeController(RecipeRepository recipeRepository, CategoryRepository categoryRepository) {
        this.recipeRepository = recipeRepository;
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("/kategoria/przepis/{id}")
    private String recipe(@PathVariable Long id, Model model) {
        Optional<Recipe> recipeOptional = recipeRepository.findById(id);

        if (recipeOptional.isPresent()) {
            Recipe recipe = recipeOptional.get();
            model.addAttribute("recipe", recipe);
            return "recipe";
        } else {
            return "Nie znaleziono takiego przepisu";
        }
    }

    @GetMapping("/kategoria/przepis/edytuj/{id}")
    private String edit(@PathVariable Long id, Model model) {
        Optional<Recipe> recipeOptional = recipeRepository.findById(id);
        List<Category> categories = categoryRepository.findAll();
        if (recipeOptional.isPresent()) {
            Recipe recipe = recipeOptional.get();
            model.addAttribute("recipe", recipe);
            model.addAttribute("categories", categories);
            return "editrecipe";
        } else {
            return "Nie znaleziono takiego przepisu";
        }
    }

    @PostMapping("/editrecipe")
    private String edit(Recipe recipe) {
        recipeRepository.save(recipe);
        return "redirect:/";
    }

    @GetMapping("/kategoria/przepis/usun/{id}")
    private String delete(@PathVariable Long id) {
        Optional<Recipe> recipeOptional = recipeRepository.findById(id);

        if (recipeOptional.isPresent()) {
            Recipe recipe = recipeOptional.get();
            recipeRepository.delete(recipe);
            return "redirect:/";
        } else {
            return "Nie znaleziono takiego przepisu";
        }
    }

    @PostMapping("/addlike/{id}")
    private String addLike(@PathVariable Long id) {
        Optional<Recipe> recipeOptional = recipeRepository.findById(id);

        if (recipeOptional.isPresent()) {
            Recipe recipe = recipeOptional.get();
            int likes = recipe.getLikes();
            recipe.setLikes(likes + 1);
            recipeRepository.save(recipe);
            return "redirect:/kategoria/przepis/{id}";
        } else {
            return "Nie znaleziono takiego przepisu";
        }
    }
}