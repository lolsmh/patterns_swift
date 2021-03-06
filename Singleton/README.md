# Одиночка

### Пример синглетон

---

Описание с Refactoring Guru

> Одиночка — это порождающий паттерн проектирования, который гарантирует, что у класса есть только один экземпляр, и предоставляет к нему глобальную точку доступа.

Плюсы: 
* Гарантирует наличие единственного экземпляра класса
* Предоставляет к нему глобальную точку доступа
* Реализует отложенную инициализацию объекта-одиночки

Минусы:
* Нарушает принцип single-responsibility.
* Вытекает из плохого дизайна проекта
* Работает некорректно с многопоточным кодом
* Затрудняет тестирование
* Затрудняет расширение если появилась необходимость в нескольких экземплярах класса

Источники: [Refactoring Guru](https://refactoring.guru/ru/design-patterns/singleton)

