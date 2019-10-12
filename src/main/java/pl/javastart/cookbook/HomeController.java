package pl.javastart.cookbook;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class HomeController {

    private RecipeRepository recipeRepository;
    private CategoryRepository categoryRepository;

    public HomeController(RecipeRepository recipeRepository, CategoryRepository categoryRepository) {
        this.recipeRepository = recipeRepository;
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("/")
    private String home(Model model){

        List<Category> categories = categoryRepository.findAll();
        model.addAttribute("categories", categories);
        return "home";
    }

    @GetMapping("/addrecipe")
    private String addRecipe(Model model){
        model.addAttribute("recipe", new Recipe());
        model.addAttribute("categories", categoryRepository.findAll());
        return "addrecipe";
    }

    @PostMapping("/addrecipe")
    private String addRecipe(Recipe recipe){
        recipeRepository.save(recipe);

        return "redirect:/";
    }

    @GetMapping("/listaprzepisow")
    private String getAll(Model model){
        model.addAttribute("recipes", recipeRepository.findAll());
        return "allrecipes";
    }

    @GetMapping("/listanajpopularniejszych")
    private String getMostPopular(Model model){
        List<Recipe> mostPopular = recipeRepository.findAll().stream()
                .sorted(Comparator.comparing(Recipe::getLikes))
                .limit(5)
                .collect(Collectors.toList());
        model.addAttribute("recipes",  mostPopular);
        return "mostpopular";
    }
}
