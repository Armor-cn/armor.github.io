package com.armor.mblog.modules.template.directive;

import com.armor.mblog.modules.template.DirectiveHandler;
import com.armor.mblog.modules.template.TemplateDirective;
import org.springframework.stereotype.Component;

/**
 * 数字处理
 * - 大于1000的显示1k
 * - 大于10000的显示1m
 *
 */
@Component
public class NumberDirective extends TemplateDirective {
    @Override
    public String getName() {
        return "num";
    }

    @Override
    public void execute(DirectiveHandler handler) throws Exception {
        Integer value = handler.getInteger("value", 1);
        String out = value.toString();

        if (value > 1000) {
            out = value / 1000 + "k";
        } else if (value > 10000) {
            out = value / 10000 + "m";
        }
        handler.renderString(out);
    }

}
