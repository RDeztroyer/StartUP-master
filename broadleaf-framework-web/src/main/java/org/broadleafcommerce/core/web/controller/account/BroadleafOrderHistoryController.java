/*
 * Copyright 2008-2012 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.broadleafcommerce.core.web.controller.account;

import org.broadleafcommerce.core.order.domain.Order;
import org.broadleafcommerce.core.order.service.type.OrderStatus;
import org.broadleafcommerce.profile.web.core.CustomerState;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;

import java.util.List;

public class BroadleafOrderHistoryController extends AbstractAccountController {

    protected static String orderHistoryView = "account/orderHistory";
    protected static String orderDetailsView = "account/partials/orderDetails";
    protected static String orderDetailsRedirectView = "account/partials/orderDetails";
    
    public String viewOrderHistory(HttpServletRequest request, Model model) {
        List<Order> orders = orderService.findOrdersForCustomer(CustomerState.getCustomer(), OrderStatus.SUBMITTED);
        model.addAttribute("orders", orders);
        return getOrderHistoryView();
    }

    public String viewOrderDetails(HttpServletRequest request, Model model, String orderNumber) {
        Order order = orderService.findOrderByOrderNumber(orderNumber);
        if (order == null) {
            throw new IllegalArgumentException("The orderNumber provided is not valid");
        }
        model.addAttribute("order", order);
        return isAjaxRequest(request) ? getOrderDetailsView() : getOrderDetailsRedirectView();
    }

    public static String getOrderHistoryView() {
        return orderHistoryView;
    }

    public static void setOrderHistoryView(String orderHistoryView) {
        BroadleafOrderHistoryController.orderHistoryView = orderHistoryView;
    }

    public static String getOrderDetailsView() {
        return orderDetailsView;
    }

    public static void setOrderDetailsView(String orderDetailsView) {
        BroadleafOrderHistoryController.orderDetailsView = orderDetailsView;
    }

    public static String getOrderDetailsRedirectView() {
        return orderDetailsRedirectView;
    }

    public static void setOrderDetailsRedirectView(String orderDetailsRedirectView) {
        BroadleafOrderHistoryController.orderDetailsRedirectView = orderDetailsRedirectView;
    }

}
