// Godbolt: https://www.godbolt.org/z/WvYMnb

auto trees(auto const& input, auto delta) -> int {
    int  const h      = input.size();
    auto const [x, y] = delta;
    return std::ranges::distance(rv::iota(0, h / x)
         | rv::transform([&](auto e) { return input[e * x][e * y % h]; })
         | rv::filter([](auto e) { return e == '#'; }));
}

auto total_trees(auto const& input, auto const& deltas) -> int {
    return std::transform_reduce(
        deltas.cbegin(), 
        deltas.cend(), 
        1, 
        std::multiplies{}, 
        [&](auto delta) { return trees(input, delta); });
}
