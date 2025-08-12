const std = @import("std");
const stdout = std.io.getStdOut().writer();

pub fn main() !void {
    try stdout.print("{s:^10}|{s:^25}|{s:^25}|{s:<128}\n", .{ "type", "max", "min", "bits" });
    try stdout.print("{s:^10}|{d:^25}|{d:^25}|{b:<128}\n", .{ "i64", std.math.maxInt(i64), std.math.minInt(i64), std.math.maxInt(i64) });
}

fn integers() !void {
    // unsigned integers
    const u8_int_max: u8 = std.math.maxInt(u8);
    try stdout.print("u8 max: {d}\n", .{u8_int_max});
    try stdout.print("u8 bits: {b}\n", .{u8_int_max});

    const u16_int_max: u16 = std.math.maxInt(u16);
    try stdout.print("u16 max: {d}\n", .{u16_int_max});

    const u32_int_max: u32 = std.math.maxInt(u32);
    try stdout.print("u32 max: {d}\n", .{u32_int_max});

    const u64_int_max: u64 = std.math.maxInt(u64);
    try stdout.print("u64 max: {d}\n", .{u64_int_max});

    const u128_int_max: u128 = std.math.maxInt(u128);
    try stdout.print("u128 max: {d}\n", .{u128_int_max});

    // signed integers
    const i8_int_max: i8 = std.math.maxInt(i8);
    try stdout.print("i8 max: {d}\n", .{i8_int_max});

    const i8_int_min: i8 = std.math.minInt(i8);
    try stdout.print("i8 min: {d}\n", .{i8_int_min});

    const i16_int_max: i16 = std.math.maxInt(i16);
    try stdout.print("i16 max: {d}\n", .{i16_int_max});

    const i16_int_min: i16 = std.math.minInt(i16);
    try stdout.print("i16 min: {d}\n", .{i16_int_min});

    const i32_int_max: i32 = std.math.maxInt(i32);
    try stdout.print("i32 max: {d}\n", .{i32_int_max});

    const i32_int_min: i32 = std.math.minInt(i32);
    try stdout.print("i32 min: {d}\n", .{i32_int_min});

    const i64_int_max: i64 = std.math.maxInt(i64);
    try stdout.print("i64 max: {d}\n", .{i64_int_max});

    const i64_int_min: i64 = std.math.minInt(i64);
    try stdout.print("i64 min: {d}\n", .{i64_int_min});

    const i128_int_max: i128 = std.math.maxInt(i128);
    try stdout.print("i128 max: {d}\n", .{i128_int_max});

    const i128_int_min: i128 = std.math.minInt(i128);
    try stdout.print("i128 min: {d}\n", .{i128_int_min});
}

fn floats() !void {
    const f8_float_max: f16 = std.math.floatMax(f16);
    try stdout.print("f16 max: {d}\n", .{f8_float_max});
}
