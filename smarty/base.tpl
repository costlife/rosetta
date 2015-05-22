<!-- <!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>

</body>
</html> -->


<!DOCTYPE html>
<html>
<head>
    <title>My Application</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="/static/style.css" />
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <script type="text/javascript" src="../static/Rosetta.js"></script>
</head>
<body>
    <div id="wrap">

        <div class="body">
            <link rel="import" href="/elements/r-tabs.html" />
            {%$ref='tabs2'%}
            {%$aa='lalala'%}
            {%$items=[
                [
                    title=> "卡片1",
                    selector=> ".content1"
                ],
                [
                    title=> "卡片2",
                    selector=> ".content2"
                ],
                [
                    title=> "卡片3",
                    selector=> ".content3"
                ]
            ]%}
            <r-tabs></r-tabs>
            <r-tabs items={%json_encode($items)%} class="r-element {%$aa%}" ref={%$ref%}>
              <div class="content1">内容 1</div>
              <div class="content2">内容 2</div>
              <div class="content3">内容 3</div>
            </r-tabs>
        </div>
    </div>

    <script type="text/javascript">
        Rosetta.ready(function() {
            alert('all elements render done');
            var tabs2 = Rosetta.ref('tabs2');
            var slider = Rosetta.ref('slider');

            tabs2.switchTo(1);

            tabs2.on('attributeChange', function() {
                console.log(tabs2.attrs.items[0]);
            });

            tabs2.update({
                items: [
                    {
                        title: 'gaojiexuan',
                        content: '内容1'
                    },

                    {
                        title: '选项卡2',
                        content: '内容2'
                    }
                ]
            });
        });

    </script>

</body>
</html>
