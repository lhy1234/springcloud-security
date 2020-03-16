package com.nb.security;

import com.alibaba.csp.sentinel.slots.block.RuleConstant;
import com.alibaba.csp.sentinel.slots.block.flow.FlowRule;
import com.alibaba.csp.sentinel.slots.block.flow.FlowRuleManager;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * sentinel规则,硬编码方式
 */
@Component
public class SentinelConfig implements ApplicationListener<ContextRefreshedEvent> {

    @Override
    public void onApplicationEvent(ContextRefreshedEvent event) {
        //系统启动好以后执行
        List<FlowRule> rules = new ArrayList<>();
        FlowRule rule = new FlowRule();
        rule.setResource("createOrder");//资源名称
        rule.setGrade(RuleConstant.FLOW_GRADE_QPS);
        rule.setCount(1);//设置QPS=1，每秒1个请求
        rules.add(rule);
        FlowRuleManager.loadRules(rules);
    }
}
