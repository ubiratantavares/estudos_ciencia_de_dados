library(esquisse)
library(ggplot2)

ggplot(mpg) +
  aes(x = displ, y = hwy, colour = cyl) +
  geom_point(shape = "circle", size = 1.5) +
  scale_color_gradient() +
  labs(x = "Cilindradas do motor", y = "Autonomia na autoestrada", title = "Relação entre consumo e cilindradas do motor", 
       subtitle = "A autonomia diminui a medida que as cilindradas aumentam", caption = "Pacote ggplot2", 
       color = "Cilindros") +
  theme_minimal() +
  theme(plot.title = element_text(size = 18L, face = "bold", 
                                  hjust = 0.5), plot.subtitle = element_text(hjust = 0.5))

# Construindo um gráfico com ggplot2
ggplot(data = mpg) +
  aes(x = displ, y = hwy, fill = drv)+
  geom_point(alpha = 1,
             colour = 'red',
             shape = 24,
             size = 2) +
  labs(title = 'Relação entre a autonomia (Km / litro) e as cilindradas do motor',
       subtitle = 'A autonomia diminui a medida que as cilindradas aumentam',
       caption = 'Fonte: ggplot2',
       x = 'Cilindradas do motor',
       y = 'Autonomia na autoestrada',
       fill = 'Tração')+
  theme_bw() +
  theme(plot.title = element_text(face = 'bold',
                                  size = 18,
                                  colour = 'red',
                                  hjust = 0.5,
                                  margin = margin(t=0.5, r=0.5, b=0.2, l=0.5, unit = 'cm')),
        plot.subtitle = element_text(size = 12,
                                     face = 'italic',
                                     hjust = 0.5,
                                     margin = margin(t=0,r=0,b=0.5,l=0,'cm')),
        plot.caption = element_text(face = 'italic'),
        axis.title = element_text(margin = margin(t=0.5,r=0,b=0,l=0,'cm'),
                                    color = 'blue'),
        axis.text = element_text(color = 'blue'),
        legend.background = element_rect(fill = 'yellow',
                                         colour = 'green',
                                         linetype = 1),
        legend.title = element_text(hjust = 0.5,
                                    face = 'bold'),
        plot.background = element_rect(fill = 'gray'),
        panel.background = element_rect(fill = 'yellow'),
        panel.grid = element_line(colour = 'gray'),
        panel.border = element_rect(colour = 'blue'))
