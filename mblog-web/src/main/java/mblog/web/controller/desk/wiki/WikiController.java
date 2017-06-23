/**
 * 
 */
package mblog.web.controller.desk.wiki;

import mblog.core.data.Tag;
import mblog.core.persist.service.PostService;
import mblog.core.persist.service.TagService;
import mblog.web.controller.BaseController;
import mblog.web.controller.desk.Views;
import mtons.modules.pojos.Paging;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 百科
 * @author yaokwok
 *
 */
@Controller
public class WikiController extends BaseController {
//	@Autowired
//	private TagService tagService;
	

	@RequestMapping("/wiki")
	public String view(ModelMap model) {
		return getView(Views.TAGS_INDEX);
	}
	
//	@RequestMapping("/wiki/{words}")
//	public String tag(@PathVariable String tag, Integer pn, ModelMap model) {
//		Paging page = wrapPage(pn);
//		try {
//			if (StringUtils.isNotEmpty(tag)) {
//				postService.searchByTag(page, tag);
//				tagService.identityHots(tag);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		model.put("page", page);
//		model.put("tag", tag);
//		return getView(Views.TAGS_TAG);
//	}
	
}
