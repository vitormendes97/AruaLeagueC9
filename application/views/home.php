
<section>
    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <p class="news">Últimas Atualizações</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <hr class="hr-black"></hr>
            </div>
        </div>
        <div class="row center-block">
            <div class="col-md-3 col-xs-3">
                <a href="#conteudo1" class="thumbnail" data-toggle="tab">
                    <img  src="<?php echo base_url('/public/img/arua-logo.jpg');?>" alt="...">
                </a>

            </div>
            <div class="col-md-3 col-xs-3">
                <a href="#conteudo2" class="thumbnail" data-toggle="tab">
                    <img src="<?php echo base_url('/public/img/arua-logo.jpg');?>" alt="...">
                </a>
            </div>
            <div class="col-md-3 col-xs-3">
                <a href="#" class="thumbnail">
                    <img src="<?php echo base_url('/public/img/arua-logo.jpg');?>" alt="...">
                </a>
            </div>
            <div class="col-md-3 col-xs-3">
                <a href="#" class="thumbnail">
                    <img src="<?php echo base_url('/public/img/arua-logo.jpg');?>" alt="...">
                </a>
            </div>

            <div class="tab-content">
                <div class="tab-pane " id="conteudo1">Conteudo 1</div>
                <div class="tab-pane active" id="conteudo2">
                    <h1>Título</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc non tellus eros. Vestibulum odio purus, faucibus a sagittis in, tristique ac lacus. Nunc est metus, rutrum eget imperdiet quis, interdum ac massa. Mauris sollicitudin, turpis
                        ut tristique pharetra, felis odio blandit nulla, sed hendrerit diam nisi non dolor. Nulla velit risus, auctor nec mauris a, bibendum tempor quam. Quisque iaculis sed leo vel vulputate. Nunc eleifend, metus ac dictum porta, enim
                        ipsum lobortis purus, at euismod urna arcu eget massa. Proin ligula tortor, malesuada tincidunt ipsum ut, bibendum tempus purus. Maecenas a tempor dui, vel ultricies nunc. Nam quis egestas leo. Cras dictum efficitur enim, et eleifend
                        arcu pharetra in.</p>
                </div>
            </div>

        </div>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p class="news">Estatísticas da Semana : Melhores do Super Master</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <hr class="hr-black"></hr>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4 col-xs-12">
                <div id="owl-demo" class="owl-carousel owl-theme">
                  <!--<?php foreach ($jogadores as $j) {  
                  
                            if($j->liga == 1)
                            { $j->liga = 'Master';}
                            else
                            {$j->liga = 'Super Master';}
                  
                  ?> -->
                    <div class="item">

                        <div class="container">
                            <div class="row">
                                <!--<div class="col-md-2 col-xs-6 col-lg-2 pull-left" style="right:15px;">-->
                                <!--     <img  id="jogador" src="<?php echo base_url('/public/img/player/gabigol.png'); ?>" class="img-responsive owl-img" ></img>-->
                                <!--</div>-->
                                <!--<div class="col-md-3 col-xs-1 visible-md visible-lg no-mobile" style="rigth:102px;">-->
                                <!--    <p class="text-justify owl-font">Gabriel Barbosa</p>-->

                                <!--    <p class="text-justify owl-font">Liga Master</p>-->

                                <!--    <p class="text-justify owl-font"><img id="owl-logo" src="<?php echo base_url('/public/img/clubes/tottenham_60x60.png'); ?>"></img>-->
                                <!--        Atacante-->
                                <!--    </p>-->

                                <!--</div>-->

                                <!--<div class="visible-xs col-xs-2">-->
                                <!--    <p class="text-justify owl-font">Gabriel Barbosa</p>-->

                                <!--    <p class="text-justify owl-font">Liga Master</p>-->
                                <!--</div>-->
                                <!--<div class="visible-xs col-xs-2 pull-right">-->
                                <!--     <p class="text-justify owl-font"><img id="owl-logo" src="<?php echo base_url('/public/img/clubes/tottenham_60x60.png'); ?>"></img>-->
                                <!--        Atacante-->
                                <!--    </p>-->
                                <!--</div>-->


                                <div class="col-md-4 col-xs-10">

                                    <div class="owl-img-mobile-home owl-img-desktop-home">
                                      <img id="jogador" class="card-img-top" src="<?php echo base_url('/public/img/player/gabigol.png'); ?>" alt="Card image cap">
                                    </div>



                                    <div class="panel panel-default on-desktop on-mobile">
                                        <!-- Default panel contents -->
                                        <div class="panel-heading">
                                            <p>Nome do Jogador : <?php echo $j->nome ?></p>
                                            <p>Posição : <?php echo $j->posicao ?></p>
                                            <p>Idade : <?php echo $j->idade ?></p>
                                            <p>Liga : <?php echo $j->liga ?></p>
                                        </div>
                                        <div class="panel-body">
                                            <p><img src="<?php echo base_url('/public/img/clubes/'.$j->team_picture); ?>"></p>
                                        </div>

                                        <!-- Table -->
                                        <table class="table table-responsive">
                                            <tr class="index-table">
                                                <th>Gols</th>
                                                <th>Média</th>
                                                <th>Faltas</th>
                                            </tr>
                                            <tr>
                                                <td class="success">12</td>
                                                <td class="success">20</td>
                                                <td class="danger">15</td>
                                            </tr>
                                        </table>
                                    </div>

                                    <!--</div>-->
                                    <!--Fim Card-->
                                </div>

                            </div>
                        </div>
                
               
                 </div>
     
                 <!--<?php } ?>-->


                </div>
            </div>
        </div>
    </div>

</section>