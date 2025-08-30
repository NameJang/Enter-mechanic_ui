$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
                $(".imgg2").css({
                    'background-image': "url('" + event.data.img + "')",
                });
            } else {
                display(false)
            }
        }
    })
    // if the person uses the escape key, it will exit the resource
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('http://Enter-mechanic/exit', JSON.stringify({}));
            return
        }
    };

    $("#close").click(function () {
        $.post('http://Enter-mechanic/exit', JSON.stringify({}));
        return
    })

    

    $("#billingmc").click(function () {
        $.post('http://Enter-mechanic/billingmc', JSON.stringify({}));
        $.post('http://Enter-mechanic/exit', JSON.stringify({}));
        return
    })

    
    $("#annow").click(function () {
        $.post('http://Enter-mechanic/exit', JSON.stringify({}));
        $.post('http://Enter-mechanic/annow', JSON.stringify({}));
        return
    })

    //when the user clicks on the submit button, it will run
    $("#button1").click(function () {
        $.post('http://Enter-mechanic/button1', JSON.stringify({}));
        $.post('http://Enter-mechanic/exit', JSON.stringify({}));
        return
    })
    $("#clean").click(function () {
        $.post('http://Enter-mechanic/clean', JSON.stringify({}));
        $.post('http://Enter-mechanic/exit', JSON.stringify({}));
        return

    })
    $("#hijeck").click(function () {
        $.post('http://Enter-mechanic/hijeck', JSON.stringify({}));
        return

    })
    $("#cloth").click(function () {
        $.post('http://Enter-mechanic/cloth', JSON.stringify({}));
        $.post('http://Enter-mechanic/exit', JSON.stringify({}));
        return
    })
    $("#clothDf").click(function () {
        $.post('http://Enter-mechanic/clothDf', JSON.stringify({}));
        $.post('http://Enter-mechanic/exit', JSON.stringify({}));
        return
    })
})



