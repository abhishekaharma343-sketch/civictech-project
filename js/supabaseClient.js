const SUPABASE_URL = "https://goddhbvcjksdrwwohzem.supabase.co";
const SUPABASE_KEY = "sb_publishable_oO08UwlbUkLJK2LXek-aeQ_ctAz94Yd";

export const supabase = window.supabase.createClient(SUPABASE_URL, SUPABASE_KEY);

if (typeof window !== 'undefined') {
    window.supabaseClient = supabase;
}
