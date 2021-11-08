package arturz.springjspblog.repo;

import arturz.springjspblog.models.Post;
import org.springframework.data.repository.CrudRepository;

public interface PostRepository extends CrudRepository<Post, Long> {
}
